part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required DateTimeRange currentRange,
  }) = _Initial;

  const factory HomeState.loading({
    required DateTimeRange currentRange,
  }) = _Loading;

  const factory HomeState.astronomyPictureOfTheDayListLoaded({
    required DateTimeRange currentRange,
    required List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList,
  }) = _AstronomyPictureOfTheDayListLoaded;

  const factory HomeState.error({
    required DateTimeRange currentRange,
    required String message,
  }) = _Error;
}
