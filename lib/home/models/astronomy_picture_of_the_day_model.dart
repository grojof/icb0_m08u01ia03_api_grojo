import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';

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



// {
//     "copyright": "\nMalcolm Loro\n",
//     "date": "2024-11-18",
//     "explanation": "Stars can create huge and intricate dust sculptures from the dense and dark molecular clouds from which they are born.  The tools the stars use to carve their detailed works are high energy light and fast stellar winds.  The heat they generate evaporates the dark molecular dust as well as causing ambient hydrogen gas to disperse and glow.   Pictured here, a new open cluster of stars designated IC 1590 is nearing completion around the intricate interstellar dust structures in the emission nebula  NGC 281, dubbed the Pac-man Nebula because of its overall shape.  The dust cloud just above center is classified as a  Bok Globule as it may gravitationally collapse and form a star -- or stars. The Pacman Nebula lies about 10,000 light years away toward the constellation of Cassiopeia.",
//     "hdurl": "https://apod.nasa.gov/apod/image/2411/BokMan_Loro_1311.jpg",
//     "media_type": "image",
//     "service_version": "v1",
//     "title": "Stars and Dust in the Pacman Nebula",
//     "url": "https://apod.nasa.gov/apod/image/2411/BokMan_Loro_960.jpg"
// }