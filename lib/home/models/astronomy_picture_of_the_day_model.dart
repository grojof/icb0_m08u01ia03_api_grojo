import 'package:freezed_annotation/freezed_annotation.dart';

part 'astronomy_picture_of_the_day_model.freezed.dart';
part 'astronomy_picture_of_the_day_model.g.dart';

@freezed
class AstronomyPictureOfTheDayModel with _$AstronomyPictureOfTheDayModel {
  const factory AstronomyPictureOfTheDayModel({
    required DateTime date,
    required String media_type,
    required String title,
    String? url,
    String? hdurl,
    String? explanation,
    String? copyright,
  }) = _AstronomyPictureOfTheDayModel;

  factory AstronomyPictureOfTheDayModel.fromJson(Map<String, dynamic> json) =>
      _$AstronomyPictureOfTheDayModelFromJson(json);
}
