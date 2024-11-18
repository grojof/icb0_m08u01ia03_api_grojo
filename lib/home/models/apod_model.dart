import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_model.freezed.dart';
part 'apod_model.g.dart';

@freezed
class ApodModel with _$ApodModel {
  const factory ApodModel({
    required String copyright,
    required DateTime date,
    required String hdurl,
    required String mediaType,
    required String serviceVersion,
    required String title,
    required String url,
  }) = _ApodModel;

  factory ApodModel.fromJson(Map<String, dynamic> json) =>
      _$ApodModelFromJson(json);
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