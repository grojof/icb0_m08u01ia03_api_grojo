import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/repository/repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

const int kDaysOfImagesToDisplay = 14;

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(_Initial(
          currentRange: DateTimeRange(
            start: DateTime.now().subtract(
              const Duration(days: kDaysOfImagesToDisplay),
            ),
            end: DateTime.now(),
          ),
        )) {
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
    emit(
      HomeState.initial(
        currentRange: DateTimeRange(
          start: DateTime.now().subtract(
            const Duration(days: kDaysOfImagesToDisplay),
          ),
          end: DateTime.now(),
        ),
      ),
    );
  }

  Future<void> _onFetchApodByDateRange(
    _FetchApodByDateRange event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      HomeState.loading(
        currentRange: event.dateRange,
      ),
    );

    final newRange = event.dateRange;

    try {
      final images = await apiNasaRepository.getApodImagesByDateRange(
        dateRange: newRange,
      );

      emit(
        HomeState.astronomyPictureOfTheDayListLoaded(
          astronomyPictureOfTheDayList: images,
          currentRange: newRange,
        ),
      );
    } catch (e) {
      emit(
        HomeState.error(
          currentRange: newRange,
          message: e.toString(),
        ),
      );
    }
  }
}
