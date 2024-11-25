import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/bloc/home_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:intl/intl.dart';

class EpicImage extends StatelessWidget {
  const EpicImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()
        ..add(
          HomeEvent.fetchEpicImages(
            startDate: DateTime(2016, 1, 1),
            endDate: DateTime(2016, 1, 1),
          ),
        ),
      child: const EpicImageView(),
    );
  }
}

class EpicImageView extends StatefulWidget {
  const EpicImageView({super.key});

  @override
  State<EpicImageView> createState() => _EpicImageViewState();
}

class _EpicImageViewState extends State<EpicImageView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EPIC Image Gallery'),
      ),
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
                              HomeEvent.fetchEpicImages(
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
                    child: Text('Busca imágenes de EPIC'),
                  ),
                  astronomyPictureOfTheDayLoaded: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  astronomyPictureOfTheDayListLoaded: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  epicImagesLoaded: (state) => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: state.images.length,
                    itemBuilder: (context, index) {
                      final image = state.images[index];

                      // Generar URLs para thumbs y jpg
                      final thumbUrl = context
                          .read<HomeBloc>()
                          .apiNasaRepository
                          .buildEpicImageUrl(
                            image: image,
                            type: EpicImageType.natural,
                            format: EpicImageFormat.thumbs,
                          );

                      final jpgUrl = context
                          .read<HomeBloc>()
                          .apiNasaRepository
                          .buildEpicImageUrl(
                            image: image,
                            type: EpicImageType.natural,
                            format: EpicImageFormat.jpg,
                          );

                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => ImagePage(imageUrl: jpgUrl),
                            ),
                          );
                        },
                        child: Image.network(
                          thumbUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                        ),
                      );
                    },
                  ),
                  error: (state) => Center(
                    child: Text(state.message),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({
    required this.imageUrl,
    super.key,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imagen')),
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
