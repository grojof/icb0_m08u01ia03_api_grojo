// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApodModelImpl _$$ApodModelImplFromJson(Map<String, dynamic> json) =>
    _$ApodModelImpl(
      copyright: json['copyright'] as String,
      date: DateTime.parse(json['date'] as String),
      hdurl: json['hdurl'] as String,
      mediaType: json['mediaType'] as String,
      serviceVersion: json['serviceVersion'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ApodModelImplToJson(_$ApodModelImpl instance) =>
    <String, dynamic>{
      'copyright': instance.copyright,
      'date': instance.date.toIso8601String(),
      'hdurl': instance.hdurl,
      'mediaType': instance.mediaType,
      'serviceVersion': instance.serviceVersion,
      'title': instance.title,
      'url': instance.url,
    };
