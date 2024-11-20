// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epic_image_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpicImageMetadataImpl _$$EpicImageMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$EpicImageMetadataImpl(
      image: json['image'] as String,
      date: json['date'] as String,
      caption: json['caption'] as String,
      centroidCoordinates: CentroidCoordinates.fromJson(
          json['centroid_coordinates'] as Map<String, dynamic>),
      dscovrJ2000Position: Position.fromJson(
          json['dscovr_j2000_position'] as Map<String, dynamic>),
      lunarJ2000Position: Position.fromJson(
          json['lunar_j2000_position'] as Map<String, dynamic>),
      sunJ2000Position:
          Position.fromJson(json['sun_j2000_position'] as Map<String, dynamic>),
      attitudeQuaternions: AttitudeQuaternions.fromJson(
          json['attitude_quaternions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpicImageMetadataImplToJson(
        _$EpicImageMetadataImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'date': instance.date,
      'caption': instance.caption,
      'centroid_coordinates': instance.centroidCoordinates,
      'dscovr_j2000_position': instance.dscovrJ2000Position,
      'lunar_j2000_position': instance.lunarJ2000Position,
      'sun_j2000_position': instance.sunJ2000Position,
      'attitude_quaternions': instance.attitudeQuaternions,
    };

_$CentroidCoordinatesImpl _$$CentroidCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$CentroidCoordinatesImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$CentroidCoordinatesImplToJson(
        _$CentroidCoordinatesImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

_$AttitudeQuaternionsImpl _$$AttitudeQuaternionsImplFromJson(
        Map<String, dynamic> json) =>
    _$AttitudeQuaternionsImpl(
      q0: (json['q0'] as num).toDouble(),
      q1: (json['q1'] as num).toDouble(),
      q2: (json['q2'] as num).toDouble(),
      q3: (json['q3'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttitudeQuaternionsImplToJson(
        _$AttitudeQuaternionsImpl instance) =>
    <String, dynamic>{
      'q0': instance.q0,
      'q1': instance.q1,
      'q2': instance.q2,
      'q3': instance.q3,
    };
