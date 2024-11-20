import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/bloc/home_bloc.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/services/api_nasa_service.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const route = '/inicio';
  static const title = 'Inicio';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.started()),
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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (state) => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: (state) => const Center(
            child: CircularProgressIndicator(),
          ),
          epicImagesLoaded: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (state) => Center(
            child: Text(state.message),
          ),
          astronomyPictureOfTheDayLoaded: (state) {
            final apod = state.astronomyPictureOfTheDay;

            return _buildMainScaffold(
              context,
              title: apod.title,
              imageUrl: apod.url,
              copyright: apod.copyright,
            );
          },
        );
      },
    );
  }

  Widget _buildMainScaffold(
    BuildContext context, {
    required String title,
    required String imageUrl,
    required String? copyright,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Home.title),
      ),
      body: Column(
        children: [
          Text(title),
          Image.network(
            imageUrl,
            height: 300,
            width: double.infinity,
          ),
          if (copyright != null) Text(copyright),
        ],
      ),
    );
  }
}
