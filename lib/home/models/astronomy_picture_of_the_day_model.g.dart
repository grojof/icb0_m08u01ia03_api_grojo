// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy_picture_of_the_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstronomyPictureOfTheDayModelImpl
    _$$AstronomyPictureOfTheDayModelImplFromJson(Map<String, dynamic> json) =>
        _$AstronomyPictureOfTheDayModelImpl(
          copyright: json['copyright'] as String,
          date: DateTime.parse(json['date'] as String),
          hdurl: json['hdurl'] as String,
          media_type: json['media_type'] as String,
          service_version: json['service_version'] as String,
          title: json['title'] as String,
          url: json['url'] as String,
        );

Map<String, dynamic> _$$AstronomyPictureOfTheDayModelImplToJson(
        _$AstronomyPictureOfTheDayModelImpl instance) =>
    <String, dynamic>{
      'copyright': instance.copyright,
      'date': instance.date.toIso8601String(),
      'hdurl': instance.hdurl,
      'media_type': instance.media_type,
      'service_version': instance.service_version,
      'title': instance.title,
      'url': instance.url,
    };
