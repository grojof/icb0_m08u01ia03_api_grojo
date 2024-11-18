// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApodModel _$ApodModelFromJson(Map<String, dynamic> json) {
  return _ApodModel.fromJson(json);
}

/// @nodoc
mixin _$ApodModel {
  String get copyright => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get hdurl => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  String get serviceVersion => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ApodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApodModelCopyWith<ApodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodModelCopyWith<$Res> {
  factory $ApodModelCopyWith(ApodModel value, $Res Function(ApodModel) then) =
      _$ApodModelCopyWithImpl<$Res, ApodModel>;
  @useResult
  $Res call(
      {String copyright,
      DateTime date,
      String hdurl,
      String mediaType,
      String serviceVersion,
      String title,
      String url});
}

/// @nodoc
class _$ApodModelCopyWithImpl<$Res, $Val extends ApodModel>
    implements $ApodModelCopyWith<$Res> {
  _$ApodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = null,
    Object? date = null,
    Object? hdurl = null,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hdurl: null == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApodModelImplCopyWith<$Res>
    implements $ApodModelCopyWith<$Res> {
  factory _$$ApodModelImplCopyWith(
          _$ApodModelImpl value, $Res Function(_$ApodModelImpl) then) =
      __$$ApodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String copyright,
      DateTime date,
      String hdurl,
      String mediaType,
      String serviceVersion,
      String title,
      String url});
}

/// @nodoc
class __$$ApodModelImplCopyWithImpl<$Res>
    extends _$ApodModelCopyWithImpl<$Res, _$ApodModelImpl>
    implements _$$ApodModelImplCopyWith<$Res> {
  __$$ApodModelImplCopyWithImpl(
      _$ApodModelImpl _value, $Res Function(_$ApodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = null,
    Object? date = null,
    Object? hdurl = null,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$ApodModelImpl(
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hdurl: null == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApodModelImpl implements _ApodModel {
  const _$ApodModelImpl(
      {required this.copyright,
      required this.date,
      required this.hdurl,
      required this.mediaType,
      required this.serviceVersion,
      required this.title,
      required this.url});

  factory _$ApodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApodModelImplFromJson(json);

  @override
  final String copyright;
  @override
  final DateTime date;
  @override
  final String hdurl;
  @override
  final String mediaType;
  @override
  final String serviceVersion;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'ApodModel(copyright: $copyright, date: $date, hdurl: $hdurl, mediaType: $mediaType, serviceVersion: $serviceVersion, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApodModelImpl &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hdurl, hdurl) || other.hdurl == hdurl) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.serviceVersion, serviceVersion) ||
                other.serviceVersion == serviceVersion) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, copyright, date, hdurl,
      mediaType, serviceVersion, title, url);

  /// Create a copy of ApodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApodModelImplCopyWith<_$ApodModelImpl> get copyWith =>
      __$$ApodModelImplCopyWithImpl<_$ApodModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApodModelImplToJson(
      this,
    );
  }
}

abstract class _ApodModel implements ApodModel {
  const factory _ApodModel(
      {required final String copyright,
      required final DateTime date,
      required final String hdurl,
      required final String mediaType,
      required final String serviceVersion,
      required final String title,
      required final String url}) = _$ApodModelImpl;

  factory _ApodModel.fromJson(Map<String, dynamic> json) =
      _$ApodModelImpl.fromJson;

  @override
  String get copyright;
  @override
  DateTime get date;
  @override
  String get hdurl;
  @override
  String get mediaType;
  @override
  String get serviceVersion;
  @override
  String get title;
  @override
  String get url;

  /// Create a copy of ApodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApodModelImplCopyWith<_$ApodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
