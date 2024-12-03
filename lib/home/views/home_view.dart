import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/theme/theme.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/utils/utils.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/widgets/widgets.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/bloc/home_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/apod_media_type.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/astronomy_picture_of_the_day_model.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/views/views.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const route = '/apod';
  static const title = 'API Nasa APOD';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()
        ..add(
          HomeEvent.fetchApodByDateRange(
            dateRange: DateTimeRange(
              start: DateTime.now().subtract(
                const Duration(days: kDaysOfImagesToDisplay),
              ),
              end: DateTime.now(),
            ),
          ),
        ),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _updateDateRange(
    BuildContext context, {
    DateTimeRange? currentRange,
    int? days,
    DateTimeRange? newFormDateTimeRange,
  }) {
    DateTimeRange newDateTimeRange;

    // Set new range using days or newFormDateTimeRange
    if (currentRange != null && days != null) {
      newDateTimeRange = DateTimeRange(
        start: currentRange.start.add(Duration(days: days)),
        end: currentRange.end.add(Duration(days: days)),
      );
    } else if (newFormDateTimeRange != null) {
      newDateTimeRange = newFormDateTimeRange;
    } else {
      return;
    }

    // Update list of images
    context.read<HomeBloc>().add(
          HomeEvent.fetchApodByDateRange(
            dateRange: newDateTimeRange,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffold(context);
  }

  Scaffold _buildScaffold(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            title: const Text(Home.title),
            centerTitle: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 70,
                ),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    final currentRange = state.maybeMap(
                      orElse: () => DateTimeRange(
                        start: DateTime.now().subtract(
                          const Duration(days: kDaysOfImagesToDisplay),
                        ),
                        end: DateTime.now(),
                      ),
                      initial: (state) => state.currentRange,
                      loading: (state) => state.currentRange,
                      astronomyPictureOfTheDayListLoaded: (state) =>
                          state.currentRange,
                      error: (state) => state.currentRange,
                    );

                    return FormBuilder(
                      key: GlobalKey<FormBuilderState>(),
                      child: Row(
                        children: [
                          FloatingActionButton.small(
                            heroTag: 'back',
                            onPressed: currentRange.start.isAfter(
                              DateTime(1995, 6, 16).add(
                                const Duration(days: kDaysOfImagesToDisplay),
                              ),
                            )
                                ? () => _updateDateRange(
                                      context,
                                      currentRange: currentRange,
                                      days: -kDaysOfImagesToDisplay,
                                    )
                                : null,
                            child: const Icon(Icons.arrow_back_ios_sharp),
                          ),
                          Expanded(
                            child: FormBuilderDateRangePicker(
                              key: ValueKey(currentRange),
                              name: 'dateRange',
                              initialValue: currentRange,
                              firstDate: DateTime(1995, 6, 16),
                              lastDate: DateTime.now(),
                              format: DateFormat('dd/MM/yyyy'),
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                              ),
                              style: Theme.of(context).textTheme.labelLarge,
                              textAlign: TextAlign.center,
                              onChanged: (newDateTimeRange) {
                                if (newDateTimeRange != null) {
                                  _updateDateRange(
                                    context,
                                    newFormDateTimeRange: newDateTimeRange,
                                  );
                                }
                              },
                            ),
                          ),
                          FloatingActionButton.small(
                            heroTag: 'forward',
                            onPressed: currentRange.end.isBefore(DateTime.now())
                                ? () => _updateDateRange(
                                      context,
                                      currentRange: currentRange,
                                      days: kDaysOfImagesToDisplay,
                                    )
                                : null,
                            child: const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(Icons.arrow_back_ios_sharp),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const LoaderWidget(
                  isSliverToBoxAdapter: true,
                ),
                loading: (_) => const LoaderWidget(
                  isSliverToBoxAdapter: true,
                ),
                astronomyPictureOfTheDayListLoaded: (state) =>
                    _buildListGallery(
                  astronomyPictureOfTheDayList:
                      state.astronomyPictureOfTheDayList,
                ),
                error: (state) => SliverToBoxAdapter(
                  child: Center(
                    child: Text(state.message),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildListGallery({
    required List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList,
  }) {
    return SliverList.builder(
      itemCount: astronomyPictureOfTheDayList.length,
      itemBuilder: (context, index) {
        final apodMedia = astronomyPictureOfTheDayList[index];

        return GestureDetector(
          onTap: () {
            if (apodMedia.media_type == ApodMediaType.image.name &&
                apodMedia.url != null) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => ImageView(
                    imageUrl: apodMedia.url!,
                    title: apodMedia.title,
                    copyright: apodMedia.copyright,
                    explanation: apodMedia.explanation,
                    hdUrl: apodMedia.hdurl,
                  ),
                ),
              );
            } else if (apodMedia.media_type == ApodMediaType.video.name &&
                apodMedia.url != null) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => VideoView(
                    videoUrl: apodMedia.url!,
                    title: apodMedia.title,
                    copyright: apodMedia.copyright,
                    explanation: apodMedia.explanation,
                  ),
                ),
              );
            } else if (apodMedia.media_type == ApodMediaType.other.name) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => BlogView(
                    title: apodMedia.title,
                    copyright: apodMedia.copyright,
                    explanation: apodMedia.explanation,
                  ),
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                //! Thumbnails
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.kSecondary,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      //! Image thumbnail
                      if (apodMedia.media_type == ApodMediaType.image.name &&
                          apodMedia.url != null)
                        Stack(
                          children: [
                            Center(
                              child: Image.network(
                                apodMedia.url!,
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const LoaderWidget(
                                    sizeFactor: 0.3,
                                  );
                                },
                                filterQuality: FilterQuality.none,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            Positioned(
                              top: 4,
                              right: 4,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: const Icon(
                                  Icons.image,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        )

                      //! Video thumbnail
                      else if (apodMedia.media_type ==
                              ApodMediaType.video.name &&
                          apodMedia.url != null)
                        Builder(
                          builder: (context) {
                            final thumbnailUrl =
                                YouTubeUrlUtil.getYouTubeThumbnail(
                              apodMedia.url!,
                            );
                            if (thumbnailUrl != null) {
                              return Stack(
                                children: [
                                  Center(
                                    child: Image.network(
                                      thumbnailUrl,
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const Icon(Icons.error),
                                    ),
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 4,
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      child: const Icon(
                                        Icons.play_circle,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              //! Error
                              return const Center(
                                child: Icon(
                                  Icons.error,
                                  color: AppColors.kError,
                                  size: 16,
                                ),
                              );
                            }
                          },
                        )
                      //! Post thumbnail
                      else ...[
                        Center(
                          child: Image.asset(
                            'assets/favicon-192.png',
                            fit: BoxFit.cover,
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            child: const Icon(
                              color: AppColors.kOnSecondary,
                              Icons.newspaper,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                //! Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        apodMedia.title,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      if (apodMedia.copyright != null)
                        Text(
                          apodMedia.copyright!.replaceAll('\n', ' ').trim(),
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.kTertiary,
                                  ),
                        ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat('dd/MM/yyyy')
                            .format(apodMedia.date.toLocal()),
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.blue,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
