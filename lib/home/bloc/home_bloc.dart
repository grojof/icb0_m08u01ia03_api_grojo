import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/repository/repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        started: (e) => _onInitialState(e, emit),
        fetchApodByDateRange: (value) => _onFetchApodByDateRange(value, emit),
      );
    });
  }

  final apiNasaRepository = ApiNasaRepository();

  Future<void> _onInitialState(
    _Started e,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.initial());

    final apod = await apiNasaRepository.getAstronomyPictureOfTheDay();

    emit(
      HomeState.astronomyPictureOfTheDayLoaded(
        astronomyPictureOfTheDay: apod,
      ),
    );
  }

  Future<void> _onFetchApodByDateRange(
    _FetchApodByDateRange event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    try {
      final images = await apiNasaRepository.getApodImagesForDateRange(
        startDate: event.startDate,
        endDate: event.endDate,
      );

      emit(
        HomeState.astronomyPictureOfTheDayListLoaded(
          astronomyPictureOfTheDayList: images,
        ),
      );
    } catch (e) {
      emit(HomeState.error(message: e.toString()));
    }
  }
}
