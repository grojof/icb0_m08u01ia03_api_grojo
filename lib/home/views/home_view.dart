import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/bloc/home_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/services/api_nasa_service.dart';
import 'package:intl/intl.dart';

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
                      GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: state.astronomyPictureOfTheDayList.length,
                    itemBuilder: (context, index) {
                      final image = state.astronomyPictureOfTheDayList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => _ImagePage(
                                imageUrl: image.url,
                                title: image.title,
                              ),
                            ),
                          );
                        },
                        child: Image.network(
                          image.url,
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
