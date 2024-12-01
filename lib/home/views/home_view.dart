import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/bloc/home_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/apod_media_type.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/astronomy_picture_of_the_day_model.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/services/api_nasa_service.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const route = '/inicio';
  static const title = 'Inicio';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Home.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: FormBuilder(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: FormBuilderDateTimePicker(
                      name: 'startDate',
                      initialValue:
                          DateTime.now().subtract(const Duration(days: 3)),
                      decoration: const InputDecoration(
                        labelText: 'Fecha Inicio',
                        border: OutlineInputBorder(),
                      ),
                      format: DateFormat('yyyy-MM-dd'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: FormBuilderDateTimePicker(
                      name: 'endDate',
                      initialValue: DateTime.now(),
                      decoration: const InputDecoration(
                        labelText: 'Fecha Fin',
                        border: OutlineInputBorder(),
                      ),
                      format: DateFormat('yyyy-MM-dd'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        final startDate =
                            _formKey.currentState!.value['startDate'];
                        final endDate = _formKey.currentState!.value['endDate'];

                        context.read<HomeBloc>().add(
                              HomeEvent.fetchApodByDateRange(
                                startDate: startDate as DateTime,
                                endDate: endDate as DateTime,
                              ),
                            );
                      }
                    },
                    child: const Text('Buscar'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const Center(
                    child: Text('Busca imágenes de APOD'),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  astronomyPictureOfTheDayListLoaded: (state) =>
                      _buildGridImages(
                    astronomyPictureOfTheDayList:
                        state.astronomyPictureOfTheDayList,
                  ),
                  error: (state) => Center(
                    child: Text(state.message),
                  ),
                  astronomyPictureOfTheDayLoaded: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  epicImagesLoaded: (_) =>
                      const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  GridView _buildGridImages({
    required List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList,
  }) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: astronomyPictureOfTheDayList.length,
      itemBuilder: (context, index) {
        final image = astronomyPictureOfTheDayList[index];
        return GestureDetector(
          onTap: () {
            if (image.media_type == ApodMediaType.image.name &&
                image.url != null) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => _ImagePage(
                    imageUrl: image.url!,
                    title: image.title,
                  ),
                ),
              );
            } else if (image.media_type == ApodMediaType.video.name &&
                image.url != null) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => VideoPage(
                    videoUrl: image.url!,
                    title: image.title,
                  ),
                ),
              );
            }
          },
          child: Stack(
            children: [
              if (image.url != null) ...[
                if (image.media_type == ApodMediaType.image.name) ...[
                  Image.network(
                    image.url!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                ] else if (image.media_type == ApodMediaType.video.name) ...[
                  Image.network(
                    image.url!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                  const Icon(Icons.play_arrow, color: Colors.white),
                ],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      softWrap: true,
                      '${image.title} ${image.copyright != null ? ''
                          ' by ${image.copyright}' : ''}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _ImagePage extends StatelessWidget {
  const _ImagePage({
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
        ),
      ),
    );
  }
}

class VideoPage extends StatefulWidget {
  const VideoPage({
    required this.videoUrl,
    required this.title,
    super.key,
  });

  final String videoUrl;
  final String title;

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,
          onReady: () {
            // Opcional: realiza acciones cuando el video esté listo
            debugPrint('YouTube Player is ready.');
          },
          onEnded: (data) {
            // Opcional: realiza acciones cuando el video termine
            debugPrint('Video has ended.');
          },
        ),
      ),
    );
  }
}
