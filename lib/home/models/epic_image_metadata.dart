import 'package:freezed_annotation/freezed_annotation.dart';

part 'epic_image_metadata.freezed.dart';
part 'epic_image_metadata.g.dart';

@freezed
class EpicImageMetadata with _$EpicImageMetadata {
  const factory EpicImageMetadata({
    required String image, // Nombre de la imagen
    required String date, // Fecha en formato 'YYYY-MM-DD'
    required String caption, // Descripción de la imagen
    @JsonKey(name: 'centroid_coordinates')
    required CentroidCoordinates centroidCoordinates,
    @JsonKey(name: 'dscovr_j2000_position')
    required Position dscovrJ2000Position,
    @JsonKey(name: 'lunar_j2000_position') required Position lunarJ2000Position,
    @JsonKey(name: 'sun_j2000_position') required Position sunJ2000Position,
    @JsonKey(name: 'attitude_quaternions')
    required AttitudeQuaternions attitudeQuaternions,
  }) = _EpicImageMetadata;

  factory EpicImageMetadata.fromJson(Map<String, dynamic> json) =>
      _$EpicImageMetadataFromJson(json);
}

@freezed
class CentroidCoordinates with _$CentroidCoordinates {
  const factory CentroidCoordinates({
    required double lat,
    required double lon,
  }) = _CentroidCoordinates;

  factory CentroidCoordinates.fromJson(Map<String, dynamic> json) =>
      _$CentroidCoordinatesFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    required double x,
    required double y,
    required double z,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}

@freezed
class AttitudeQuaternions with _$AttitudeQuaternions {
  const factory AttitudeQuaternions({
    required double q0,
    required double q1,
    required double q2,
    required double q3,
  }) = _AttitudeQuaternions;

  factory AttitudeQuaternions.fromJson(Map<String, dynamic> json) =>
      _$AttitudeQuaternionsFromJson(json);
}
