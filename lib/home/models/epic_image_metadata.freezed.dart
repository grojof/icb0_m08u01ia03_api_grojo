// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epic_image_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpicImageMetadata _$EpicImageMetadataFromJson(Map<String, dynamic> json) {
  return _EpicImageMetadata.fromJson(json);
}

/// @nodoc
mixin _$EpicImageMetadata {
  String get image => throw _privateConstructorUsedError; // Nombre de la imagen
  String get date =>
      throw _privateConstructorUsedError; // Fecha en formato 'YYYY-MM-DD'
  String get caption =>
      throw _privateConstructorUsedError; // Descripción de la imagen
  @JsonKey(name: 'centroid_coordinates')
  CentroidCoordinates get centroidCoordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'dscovr_j2000_position')
  Position get dscovrJ2000Position => throw _privateConstructorUsedError;
  @JsonKey(name: 'lunar_j2000_position')
  Position get lunarJ2000Position => throw _privateConstructorUsedError;
  @JsonKey(name: 'sun_j2000_position')
  Position get sunJ2000Position => throw _privateConstructorUsedError;
  @JsonKey(name: 'attitude_quaternions')
  AttitudeQuaternions get attitudeQuaternions =>
      throw _privateConstructorUsedError;

  /// Serializes this EpicImageMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpicImageMetadataCopyWith<EpicImageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpicImageMetadataCopyWith<$Res> {
  factory $EpicImageMetadataCopyWith(
          EpicImageMetadata value, $Res Function(EpicImageMetadata) then) =
      _$EpicImageMetadataCopyWithImpl<$Res, EpicImageMetadata>;
  @useResult
  $Res call(
      {String image,
      String date,
      String caption,
      @JsonKey(name: 'centroid_coordinates')
      CentroidCoordinates centroidCoordinates,
      @JsonKey(name: 'dscovr_j2000_position') Position dscovrJ2000Position,
      @JsonKey(name: 'lunar_j2000_position') Position lunarJ2000Position,
      @JsonKey(name: 'sun_j2000_position') Position sunJ2000Position,
      @JsonKey(name: 'attitude_quaternions')
      AttitudeQuaternions attitudeQuaternions});

  $CentroidCoordinatesCopyWith<$Res> get centroidCoordinates;
  $PositionCopyWith<$Res> get dscovrJ2000Position;
  $PositionCopyWith<$Res> get lunarJ2000Position;
  $PositionCopyWith<$Res> get sunJ2000Position;
  $AttitudeQuaternionsCopyWith<$Res> get attitudeQuaternions;
}

/// @nodoc
class _$EpicImageMetadataCopyWithImpl<$Res, $Val extends EpicImageMetadata>
    implements $EpicImageMetadataCopyWith<$Res> {
  _$EpicImageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? date = null,
    Object? caption = null,
    Object? centroidCoordinates = null,
    Object? dscovrJ2000Position = null,
    Object? lunarJ2000Position = null,
    Object? sunJ2000Position = null,
    Object? attitudeQuaternions = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      centroidCoordinates: null == centroidCoordinates
          ? _value.centroidCoordinates
          : centroidCoordinates // ignore: cast_nullable_to_non_nullable
              as CentroidCoordinates,
      dscovrJ2000Position: null == dscovrJ2000Position
          ? _value.dscovrJ2000Position
          : dscovrJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      lunarJ2000Position: null == lunarJ2000Position
          ? _value.lunarJ2000Position
          : lunarJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      sunJ2000Position: null == sunJ2000Position
          ? _value.sunJ2000Position
          : sunJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      attitudeQuaternions: null == attitudeQuaternions
          ? _value.attitudeQuaternions
          : attitudeQuaternions // ignore: cast_nullable_to_non_nullable
              as AttitudeQuaternions,
    ) as $Val);
  }

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CentroidCoordinatesCopyWith<$Res> get centroidCoordinates {
    return $CentroidCoordinatesCopyWith<$Res>(_value.centroidCoordinates,
        (value) {
      return _then(_value.copyWith(centroidCoordinates: value) as $Val);
    });
  }

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get dscovrJ2000Position {
    return $PositionCopyWith<$Res>(_value.dscovrJ2000Position, (value) {
      return _then(_value.copyWith(dscovrJ2000Position: value) as $Val);
    });
  }

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get lunarJ2000Position {
    return $PositionCopyWith<$Res>(_value.lunarJ2000Position, (value) {
      return _then(_value.copyWith(lunarJ2000Position: value) as $Val);
    });
  }

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get sunJ2000Position {
    return $PositionCopyWith<$Res>(_value.sunJ2000Position, (value) {
      return _then(_value.copyWith(sunJ2000Position: value) as $Val);
    });
  }

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttitudeQuaternionsCopyWith<$Res> get attitudeQuaternions {
    return $AttitudeQuaternionsCopyWith<$Res>(_value.attitudeQuaternions,
        (value) {
      return _then(_value.copyWith(attitudeQuaternions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpicImageMetadataImplCopyWith<$Res>
    implements $EpicImageMetadataCopyWith<$Res> {
  factory _$$EpicImageMetadataImplCopyWith(_$EpicImageMetadataImpl value,
          $Res Function(_$EpicImageMetadataImpl) then) =
      __$$EpicImageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String date,
      String caption,
      @JsonKey(name: 'centroid_coordinates')
      CentroidCoordinates centroidCoordinates,
      @JsonKey(name: 'dscovr_j2000_position') Position dscovrJ2000Position,
      @JsonKey(name: 'lunar_j2000_position') Position lunarJ2000Position,
      @JsonKey(name: 'sun_j2000_position') Position sunJ2000Position,
      @JsonKey(name: 'attitude_quaternions')
      AttitudeQuaternions attitudeQuaternions});

  @override
  $CentroidCoordinatesCopyWith<$Res> get centroidCoordinates;
  @override
  $PositionCopyWith<$Res> get dscovrJ2000Position;
  @override
  $PositionCopyWith<$Res> get lunarJ2000Position;
  @override
  $PositionCopyWith<$Res> get sunJ2000Position;
  @override
  $AttitudeQuaternionsCopyWith<$Res> get attitudeQuaternions;
}

/// @nodoc
class __$$EpicImageMetadataImplCopyWithImpl<$Res>
    extends _$EpicImageMetadataCopyWithImpl<$Res, _$EpicImageMetadataImpl>
    implements _$$EpicImageMetadataImplCopyWith<$Res> {
  __$$EpicImageMetadataImplCopyWithImpl(_$EpicImageMetadataImpl _value,
      $Res Function(_$EpicImageMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? date = null,
    Object? caption = null,
    Object? centroidCoordinates = null,
    Object? dscovrJ2000Position = null,
    Object? lunarJ2000Position = null,
    Object? sunJ2000Position = null,
    Object? attitudeQuaternions = null,
  }) {
    return _then(_$EpicImageMetadataImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      centroidCoordinates: null == centroidCoordinates
          ? _value.centroidCoordinates
          : centroidCoordinates // ignore: cast_nullable_to_non_nullable
              as CentroidCoordinates,
      dscovrJ2000Position: null == dscovrJ2000Position
          ? _value.dscovrJ2000Position
          : dscovrJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      lunarJ2000Position: null == lunarJ2000Position
          ? _value.lunarJ2000Position
          : lunarJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      sunJ2000Position: null == sunJ2000Position
          ? _value.sunJ2000Position
          : sunJ2000Position // ignore: cast_nullable_to_non_nullable
              as Position,
      attitudeQuaternions: null == attitudeQuaternions
          ? _value.attitudeQuaternions
          : attitudeQuaternions // ignore: cast_nullable_to_non_nullable
              as AttitudeQuaternions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpicImageMetadataImpl implements _EpicImageMetadata {
  const _$EpicImageMetadataImpl(
      {required this.image,
      required this.date,
      required this.caption,
      @JsonKey(name: 'centroid_coordinates') required this.centroidCoordinates,
      @JsonKey(name: 'dscovr_j2000_position') required this.dscovrJ2000Position,
      @JsonKey(name: 'lunar_j2000_position') required this.lunarJ2000Position,
      @JsonKey(name: 'sun_j2000_position') required this.sunJ2000Position,
      @JsonKey(name: 'attitude_quaternions')
      required this.attitudeQuaternions});

  factory _$EpicImageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpicImageMetadataImplFromJson(json);

  @override
  final String image;
// Nombre de la imagen
  @override
  final String date;
// Fecha en formato 'YYYY-MM-DD'
  @override
  final String caption;
// Descripción de la imagen
  @override
  @JsonKey(name: 'centroid_coordinates')
  final CentroidCoordinates centroidCoordinates;
  @override
  @JsonKey(name: 'dscovr_j2000_position')
  final Position dscovrJ2000Position;
  @override
  @JsonKey(name: 'lunar_j2000_position')
  final Position lunarJ2000Position;
  @override
  @JsonKey(name: 'sun_j2000_position')
  final Position sunJ2000Position;
  @override
  @JsonKey(name: 'attitude_quaternions')
  final AttitudeQuaternions attitudeQuaternions;

  @override
  String toString() {
    return 'EpicImageMetadata(image: $image, date: $date, caption: $caption, centroidCoordinates: $centroidCoordinates, dscovrJ2000Position: $dscovrJ2000Position, lunarJ2000Position: $lunarJ2000Position, sunJ2000Position: $sunJ2000Position, attitudeQuaternions: $attitudeQuaternions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpicImageMetadataImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.centroidCoordinates, centroidCoordinates) ||
                other.centroidCoordinates == centroidCoordinates) &&
            (identical(other.dscovrJ2000Position, dscovrJ2000Position) ||
                other.dscovrJ2000Position == dscovrJ2000Position) &&
            (identical(other.lunarJ2000Position, lunarJ2000Position) ||
                other.lunarJ2000Position == lunarJ2000Position) &&
            (identical(other.sunJ2000Position, sunJ2000Position) ||
                other.sunJ2000Position == sunJ2000Position) &&
            (identical(other.attitudeQuaternions, attitudeQuaternions) ||
                other.attitudeQuaternions == attitudeQuaternions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      image,
      date,
      caption,
      centroidCoordinates,
      dscovrJ2000Position,
      lunarJ2000Position,
      sunJ2000Position,
      attitudeQuaternions);

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpicImageMetadataImplCopyWith<_$EpicImageMetadataImpl> get copyWith =>
      __$$EpicImageMetadataImplCopyWithImpl<_$EpicImageMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpicImageMetadataImplToJson(
      this,
    );
  }
}

abstract class _EpicImageMetadata implements EpicImageMetadata {
  const factory _EpicImageMetadata(
          {required final String image,
          required final String date,
          required final String caption,
          @JsonKey(name: 'centroid_coordinates')
          required final CentroidCoordinates centroidCoordinates,
          @JsonKey(name: 'dscovr_j2000_position')
          required final Position dscovrJ2000Position,
          @JsonKey(name: 'lunar_j2000_position')
          required final Position lunarJ2000Position,
          @JsonKey(name: 'sun_j2000_position')
          required final Position sunJ2000Position,
          @JsonKey(name: 'attitude_quaternions')
          required final AttitudeQuaternions attitudeQuaternions}) =
      _$EpicImageMetadataImpl;

  factory _EpicImageMetadata.fromJson(Map<String, dynamic> json) =
      _$EpicImageMetadataImpl.fromJson;

  @override
  String get image; // Nombre de la imagen
  @override
  String get date; // Fecha en formato 'YYYY-MM-DD'
  @override
  String get caption; // Descripción de la imagen
  @override
  @JsonKey(name: 'centroid_coordinates')
  CentroidCoordinates get centroidCoordinates;
  @override
  @JsonKey(name: 'dscovr_j2000_position')
  Position get dscovrJ2000Position;
  @override
  @JsonKey(name: 'lunar_j2000_position')
  Position get lunarJ2000Position;
  @override
  @JsonKey(name: 'sun_j2000_position')
  Position get sunJ2000Position;
  @override
  @JsonKey(name: 'attitude_quaternions')
  AttitudeQuaternions get attitudeQuaternions;

  /// Create a copy of EpicImageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpicImageMetadataImplCopyWith<_$EpicImageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CentroidCoordinates _$CentroidCoordinatesFromJson(Map<String, dynamic> json) {
  return _CentroidCoordinates.fromJson(json);
}

/// @nodoc
mixin _$CentroidCoordinates {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  /// Serializes this CentroidCoordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CentroidCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CentroidCoordinatesCopyWith<CentroidCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentroidCoordinatesCopyWith<$Res> {
  factory $CentroidCoordinatesCopyWith(
          CentroidCoordinates value, $Res Function(CentroidCoordinates) then) =
      _$CentroidCoordinatesCopyWithImpl<$Res, CentroidCoordinates>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$CentroidCoordinatesCopyWithImpl<$Res, $Val extends CentroidCoordinates>
    implements $CentroidCoordinatesCopyWith<$Res> {
  _$CentroidCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CentroidCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CentroidCoordinatesImplCopyWith<$Res>
    implements $CentroidCoordinatesCopyWith<$Res> {
  factory _$$CentroidCoordinatesImplCopyWith(_$CentroidCoordinatesImpl value,
          $Res Function(_$CentroidCoordinatesImpl) then) =
      __$$CentroidCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$CentroidCoordinatesImplCopyWithImpl<$Res>
    extends _$CentroidCoordinatesCopyWithImpl<$Res, _$CentroidCoordinatesImpl>
    implements _$$CentroidCoordinatesImplCopyWith<$Res> {
  __$$CentroidCoordinatesImplCopyWithImpl(_$CentroidCoordinatesImpl _value,
      $Res Function(_$CentroidCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CentroidCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$CentroidCoordinatesImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CentroidCoordinatesImpl implements _CentroidCoordinates {
  const _$CentroidCoordinatesImpl({required this.lat, required this.lon});

  factory _$CentroidCoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CentroidCoordinatesImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'CentroidCoordinates(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CentroidCoordinatesImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  /// Create a copy of CentroidCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CentroidCoordinatesImplCopyWith<_$CentroidCoordinatesImpl> get copyWith =>
      __$$CentroidCoordinatesImplCopyWithImpl<_$CentroidCoordinatesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CentroidCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _CentroidCoordinates implements CentroidCoordinates {
  const factory _CentroidCoordinates(
      {required final double lat,
      required final double lon}) = _$CentroidCoordinatesImpl;

  factory _CentroidCoordinates.fromJson(Map<String, dynamic> json) =
      _$CentroidCoordinatesImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;

  /// Create a copy of CentroidCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CentroidCoordinatesImplCopyWith<_$CentroidCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$PositionImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl implements _Position {
  const _$PositionImpl({required this.x, required this.y, required this.z});

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  @override
  String toString() {
    return 'Position(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
      {required final double x,
      required final double y,
      required final double z}) = _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttitudeQuaternions _$AttitudeQuaternionsFromJson(Map<String, dynamic> json) {
  return _AttitudeQuaternions.fromJson(json);
}

/// @nodoc
mixin _$AttitudeQuaternions {
  double get q0 => throw _privateConstructorUsedError;
  double get q1 => throw _privateConstructorUsedError;
  double get q2 => throw _privateConstructorUsedError;
  double get q3 => throw _privateConstructorUsedError;

  /// Serializes this AttitudeQuaternions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttitudeQuaternions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttitudeQuaternionsCopyWith<AttitudeQuaternions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttitudeQuaternionsCopyWith<$Res> {
  factory $AttitudeQuaternionsCopyWith(
          AttitudeQuaternions value, $Res Function(AttitudeQuaternions) then) =
      _$AttitudeQuaternionsCopyWithImpl<$Res, AttitudeQuaternions>;
  @useResult
  $Res call({double q0, double q1, double q2, double q3});
}

/// @nodoc
class _$AttitudeQuaternionsCopyWithImpl<$Res, $Val extends AttitudeQuaternions>
    implements $AttitudeQuaternionsCopyWith<$Res> {
  _$AttitudeQuaternionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttitudeQuaternions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q0 = null,
    Object? q1 = null,
    Object? q2 = null,
    Object? q3 = null,
  }) {
    return _then(_value.copyWith(
      q0: null == q0
          ? _value.q0
          : q0 // ignore: cast_nullable_to_non_nullable
              as double,
      q1: null == q1
          ? _value.q1
          : q1 // ignore: cast_nullable_to_non_nullable
              as double,
      q2: null == q2
          ? _value.q2
          : q2 // ignore: cast_nullable_to_non_nullable
              as double,
      q3: null == q3
          ? _value.q3
          : q3 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttitudeQuaternionsImplCopyWith<$Res>
    implements $AttitudeQuaternionsCopyWith<$Res> {
  factory _$$AttitudeQuaternionsImplCopyWith(_$AttitudeQuaternionsImpl value,
          $Res Function(_$AttitudeQuaternionsImpl) then) =
      __$$AttitudeQuaternionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double q0, double q1, double q2, double q3});
}

/// @nodoc
class __$$AttitudeQuaternionsImplCopyWithImpl<$Res>
    extends _$AttitudeQuaternionsCopyWithImpl<$Res, _$AttitudeQuaternionsImpl>
    implements _$$AttitudeQuaternionsImplCopyWith<$Res> {
  __$$AttitudeQuaternionsImplCopyWithImpl(_$AttitudeQuaternionsImpl _value,
      $Res Function(_$AttitudeQuaternionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttitudeQuaternions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q0 = null,
    Object? q1 = null,
    Object? q2 = null,
    Object? q3 = null,
  }) {
    return _then(_$AttitudeQuaternionsImpl(
      q0: null == q0
          ? _value.q0
          : q0 // ignore: cast_nullable_to_non_nullable
              as double,
      q1: null == q1
          ? _value.q1
          : q1 // ignore: cast_nullable_to_non_nullable
              as double,
      q2: null == q2
          ? _value.q2
          : q2 // ignore: cast_nullable_to_non_nullable
              as double,
      q3: null == q3
          ? _value.q3
          : q3 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttitudeQuaternionsImpl implements _AttitudeQuaternions {
  const _$AttitudeQuaternionsImpl(
      {required this.q0, required this.q1, required this.q2, required this.q3});

  factory _$AttitudeQuaternionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttitudeQuaternionsImplFromJson(json);

  @override
  final double q0;
  @override
  final double q1;
  @override
  final double q2;
  @override
  final double q3;

  @override
  String toString() {
    return 'AttitudeQuaternions(q0: $q0, q1: $q1, q2: $q2, q3: $q3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttitudeQuaternionsImpl &&
            (identical(other.q0, q0) || other.q0 == q0) &&
            (identical(other.q1, q1) || other.q1 == q1) &&
            (identical(other.q2, q2) || other.q2 == q2) &&
            (identical(other.q3, q3) || other.q3 == q3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q0, q1, q2, q3);

  /// Create a copy of AttitudeQuaternions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttitudeQuaternionsImplCopyWith<_$AttitudeQuaternionsImpl> get copyWith =>
      __$$AttitudeQuaternionsImplCopyWithImpl<_$AttitudeQuaternionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttitudeQuaternionsImplToJson(
      this,
    );
  }
}

abstract class _AttitudeQuaternions implements AttitudeQuaternions {
  const factory _AttitudeQuaternions(
      {required final double q0,
      required final double q1,
      required final double q2,
      required final double q3}) = _$AttitudeQuaternionsImpl;

  factory _AttitudeQuaternions.fromJson(Map<String, dynamic> json) =
      _$AttitudeQuaternionsImpl.fromJson;

  @override
  double get q0;
  @override
  double get q1;
  @override
  double get q2;
  @override
  double get q3;

  /// Create a copy of AttitudeQuaternions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttitudeQuaternionsImplCopyWith<_$AttitudeQuaternionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
