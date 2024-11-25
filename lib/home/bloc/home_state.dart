part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.astronomyPictureOfTheDayLoaded({
    required AstronomyPictureOfTheDayModel astronomyPictureOfTheDay,
  }) = _AstronomyPictureOfTheDayLoaded;

  const factory HomeState.astronomyPictureOfTheDayListLoaded({
    required List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList,
  }) = _AstronomyPictureOfTheDayListLoaded;

  const factory HomeState.epicImagesLoaded({
    required List<EpicImageMetadata> images,
  }) = _EpicImagesLoaded;

  const factory HomeState.error({
    required String message,
  }) = _Error;
}
