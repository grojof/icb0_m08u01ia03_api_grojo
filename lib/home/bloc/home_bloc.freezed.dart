// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime startDate, DateTime endDate)
        fetchEpicImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchEpicImages value) fetchEpicImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchEpicImages value)? fetchEpicImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchEpicImages value)? fetchEpicImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime startDate, DateTime endDate)
        fetchEpicImages,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchEpicImages value) fetchEpicImages,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchEpicImages value)? fetchEpicImages,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchEpicImages value)? fetchEpicImages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchEpicImagesImplCopyWith<$Res> {
  factory _$$FetchEpicImagesImplCopyWith(_$FetchEpicImagesImpl value,
          $Res Function(_$FetchEpicImagesImpl) then) =
      __$$FetchEpicImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$FetchEpicImagesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchEpicImagesImpl>
    implements _$$FetchEpicImagesImplCopyWith<$Res> {
  __$$FetchEpicImagesImplCopyWithImpl(
      _$FetchEpicImagesImpl _value, $Res Function(_$FetchEpicImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$FetchEpicImagesImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchEpicImagesImpl implements _FetchEpicImages {
  const _$FetchEpicImagesImpl({required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'HomeEvent.fetchEpicImages(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEpicImagesImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEpicImagesImplCopyWith<_$FetchEpicImagesImpl> get copyWith =>
      __$$FetchEpicImagesImplCopyWithImpl<_$FetchEpicImagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime startDate, DateTime endDate)
        fetchEpicImages,
  }) {
    return fetchEpicImages(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
  }) {
    return fetchEpicImages?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime startDate, DateTime endDate)? fetchEpicImages,
    required TResult orElse(),
  }) {
    if (fetchEpicImages != null) {
      return fetchEpicImages(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchEpicImages value) fetchEpicImages,
  }) {
    return fetchEpicImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchEpicImages value)? fetchEpicImages,
  }) {
    return fetchEpicImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchEpicImages value)? fetchEpicImages,
    required TResult orElse(),
  }) {
    if (fetchEpicImages != null) {
      return fetchEpicImages(this);
    }
    return orElse();
  }
}

abstract class _FetchEpicImages implements HomeEvent {
  const factory _FetchEpicImages(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$FetchEpicImagesImpl;

  DateTime get startDate;
  DateTime get endDate;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEpicImagesImplCopyWith<_$FetchEpicImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AstronomyPictureOfTheDayLoadedImplCopyWith<$Res> {
  factory _$$AstronomyPictureOfTheDayLoadedImplCopyWith(
          _$AstronomyPictureOfTheDayLoadedImpl value,
          $Res Function(_$AstronomyPictureOfTheDayLoadedImpl) then) =
      __$$AstronomyPictureOfTheDayLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AstronomyPictureOfTheDayModel astronomyPictureOfTheDay});

  $AstronomyPictureOfTheDayModelCopyWith<$Res> get astronomyPictureOfTheDay;
}

/// @nodoc
class __$$AstronomyPictureOfTheDayLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$AstronomyPictureOfTheDayLoadedImpl>
    implements _$$AstronomyPictureOfTheDayLoadedImplCopyWith<$Res> {
  __$$AstronomyPictureOfTheDayLoadedImplCopyWithImpl(
      _$AstronomyPictureOfTheDayLoadedImpl _value,
      $Res Function(_$AstronomyPictureOfTheDayLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? astronomyPictureOfTheDay = null,
  }) {
    return _then(_$AstronomyPictureOfTheDayLoadedImpl(
      astronomyPictureOfTheDay: null == astronomyPictureOfTheDay
          ? _value.astronomyPictureOfTheDay
          : astronomyPictureOfTheDay // ignore: cast_nullable_to_non_nullable
              as AstronomyPictureOfTheDayModel,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AstronomyPictureOfTheDayModelCopyWith<$Res> get astronomyPictureOfTheDay {
    return $AstronomyPictureOfTheDayModelCopyWith<$Res>(
        _value.astronomyPictureOfTheDay, (value) {
      return _then(_value.copyWith(astronomyPictureOfTheDay: value));
    });
  }
}

/// @nodoc

class _$AstronomyPictureOfTheDayLoadedImpl
    implements _AstronomyPictureOfTheDayLoaded {
  const _$AstronomyPictureOfTheDayLoadedImpl(
      {required this.astronomyPictureOfTheDay});

  @override
  final AstronomyPictureOfTheDayModel astronomyPictureOfTheDay;

  @override
  String toString() {
    return 'HomeState.astronomyPictureOfTheDayLoaded(astronomyPictureOfTheDay: $astronomyPictureOfTheDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstronomyPictureOfTheDayLoadedImpl &&
            (identical(
                    other.astronomyPictureOfTheDay, astronomyPictureOfTheDay) ||
                other.astronomyPictureOfTheDay == astronomyPictureOfTheDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, astronomyPictureOfTheDay);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstronomyPictureOfTheDayLoadedImplCopyWith<
          _$AstronomyPictureOfTheDayLoadedImpl>
      get copyWith => __$$AstronomyPictureOfTheDayLoadedImplCopyWithImpl<
          _$AstronomyPictureOfTheDayLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) {
    return astronomyPictureOfTheDayLoaded(astronomyPictureOfTheDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return astronomyPictureOfTheDayLoaded?.call(astronomyPictureOfTheDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (astronomyPictureOfTheDayLoaded != null) {
      return astronomyPictureOfTheDayLoaded(astronomyPictureOfTheDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return astronomyPictureOfTheDayLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return astronomyPictureOfTheDayLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (astronomyPictureOfTheDayLoaded != null) {
      return astronomyPictureOfTheDayLoaded(this);
    }
    return orElse();
  }
}

abstract class _AstronomyPictureOfTheDayLoaded implements HomeState {
  const factory _AstronomyPictureOfTheDayLoaded(
      {required final AstronomyPictureOfTheDayModel
          astronomyPictureOfTheDay}) = _$AstronomyPictureOfTheDayLoadedImpl;

  AstronomyPictureOfTheDayModel get astronomyPictureOfTheDay;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstronomyPictureOfTheDayLoadedImplCopyWith<
          _$AstronomyPictureOfTheDayLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpicImagesLoadedImplCopyWith<$Res> {
  factory _$$EpicImagesLoadedImplCopyWith(_$EpicImagesLoadedImpl value,
          $Res Function(_$EpicImagesLoadedImpl) then) =
      __$$EpicImagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EpicImageMetadata> images});
}

/// @nodoc
class __$$EpicImagesLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$EpicImagesLoadedImpl>
    implements _$$EpicImagesLoadedImplCopyWith<$Res> {
  __$$EpicImagesLoadedImplCopyWithImpl(_$EpicImagesLoadedImpl _value,
      $Res Function(_$EpicImagesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$EpicImagesLoadedImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<EpicImageMetadata>,
    ));
  }
}

/// @nodoc

class _$EpicImagesLoadedImpl implements _EpicImagesLoaded {
  const _$EpicImagesLoadedImpl({required final List<EpicImageMetadata> images})
      : _images = images;

  final List<EpicImageMetadata> _images;
  @override
  List<EpicImageMetadata> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'HomeState.epicImagesLoaded(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpicImagesLoadedImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpicImagesLoadedImplCopyWith<_$EpicImagesLoadedImpl> get copyWith =>
      __$$EpicImagesLoadedImplCopyWithImpl<_$EpicImagesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) {
    return epicImagesLoaded(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return epicImagesLoaded?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (epicImagesLoaded != null) {
      return epicImagesLoaded(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return epicImagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return epicImagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (epicImagesLoaded != null) {
      return epicImagesLoaded(this);
    }
    return orElse();
  }
}

abstract class _EpicImagesLoaded implements HomeState {
  const factory _EpicImagesLoaded(
      {required final List<EpicImageMetadata> images}) = _$EpicImagesLoadedImpl;

  List<EpicImageMetadata> get images;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpicImagesLoadedImplCopyWith<_$EpicImagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(List<EpicImageMetadata> images) epicImagesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AstronomyPictureOfTheDayModel astronomyPictureOfTheDay)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(List<EpicImageMetadata> images)? epicImagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayLoaded value)
        astronomyPictureOfTheDayLoaded,
    required TResult Function(_EpicImagesLoaded value) epicImagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult? Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayLoaded value)?
        astronomyPictureOfTheDayLoaded,
    TResult Function(_EpicImagesLoaded value)? epicImagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
