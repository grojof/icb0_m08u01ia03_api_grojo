// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy_picture_of_the_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstronomyPictureOfTheDayModelImpl
    _$$AstronomyPictureOfTheDayModelImplFromJson(Map<String, dynamic> json) =>
        _$AstronomyPictureOfTheDayModelImpl(
          date: DateTime.parse(json['date'] as String),
          media_type: json['media_type'] as String,
          title: json['title'] as String,
          url: json['url'] as String,
          hdurl: json['hdurl'] as String?,
          explanation: json['explanation'] as String?,
          copyright: json['copyright'] as String?,
        );

Map<String, dynamic> _$$AstronomyPictureOfTheDayModelImplToJson(
        _$AstronomyPictureOfTheDayModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'media_type': instance.media_type,
      'title': instance.title,
      'url': instance.url,
      'hdurl': instance.hdurl,
      'explanation': instance.explanation,
      'copyright': instance.copyright,
    };
