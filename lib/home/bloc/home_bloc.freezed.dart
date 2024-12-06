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
    required TResult Function(DateTimeRange dateRange) fetchApodByDateRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTimeRange dateRange)? fetchApodByDateRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTimeRange dateRange)? fetchApodByDateRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchApodByDateRange value) fetchApodByDateRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchApodByDateRange value)? fetchApodByDateRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchApodByDateRange value)? fetchApodByDateRange,
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
    required TResult Function(DateTimeRange dateRange) fetchApodByDateRange,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTimeRange dateRange)? fetchApodByDateRange,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTimeRange dateRange)? fetchApodByDateRange,
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
    required TResult Function(_FetchApodByDateRange value) fetchApodByDateRange,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchApodByDateRange value)? fetchApodByDateRange,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchApodByDateRange value)? fetchApodByDateRange,
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
abstract class _$$FetchApodByDateRangeImplCopyWith<$Res> {
  factory _$$FetchApodByDateRangeImplCopyWith(_$FetchApodByDateRangeImpl value,
          $Res Function(_$FetchApodByDateRangeImpl) then) =
      __$$FetchApodByDateRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange dateRange});
}

/// @nodoc
class __$$FetchApodByDateRangeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchApodByDateRangeImpl>
    implements _$$FetchApodByDateRangeImplCopyWith<$Res> {
  __$$FetchApodByDateRangeImplCopyWithImpl(_$FetchApodByDateRangeImpl _value,
      $Res Function(_$FetchApodByDateRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = null,
  }) {
    return _then(_$FetchApodByDateRangeImpl(
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$FetchApodByDateRangeImpl implements _FetchApodByDateRange {
  const _$FetchApodByDateRangeImpl({required this.dateRange});

  @override
  final DateTimeRange dateRange;

  @override
  String toString() {
    return 'HomeEvent.fetchApodByDateRange(dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchApodByDateRangeImpl &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateRange);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchApodByDateRangeImplCopyWith<_$FetchApodByDateRangeImpl>
      get copyWith =>
          __$$FetchApodByDateRangeImplCopyWithImpl<_$FetchApodByDateRangeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTimeRange dateRange) fetchApodByDateRange,
  }) {
    return fetchApodByDateRange(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTimeRange dateRange)? fetchApodByDateRange,
  }) {
    return fetchApodByDateRange?.call(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTimeRange dateRange)? fetchApodByDateRange,
    required TResult orElse(),
  }) {
    if (fetchApodByDateRange != null) {
      return fetchApodByDateRange(dateRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchApodByDateRange value) fetchApodByDateRange,
  }) {
    return fetchApodByDateRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchApodByDateRange value)? fetchApodByDateRange,
  }) {
    return fetchApodByDateRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchApodByDateRange value)? fetchApodByDateRange,
    required TResult orElse(),
  }) {
    if (fetchApodByDateRange != null) {
      return fetchApodByDateRange(this);
    }
    return orElse();
  }
}

abstract class _FetchApodByDateRange implements HomeEvent {
  const factory _FetchApodByDateRange(
      {required final DateTimeRange dateRange}) = _$FetchApodByDateRangeImpl;

  DateTimeRange get dateRange;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchApodByDateRangeImplCopyWith<_$FetchApodByDateRangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTimeRange currentRange) loading,
    required TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(DateTimeRange currentRange, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTimeRange currentRange)? loading,
    TResult? Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(DateTimeRange currentRange, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTimeRange currentRange)? loading,
    TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(DateTimeRange currentRange, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayListLoaded value)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
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
    required TResult Function(DateTimeRange currentRange) loading,
    required TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(DateTimeRange currentRange, String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTimeRange currentRange)? loading,
    TResult? Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(DateTimeRange currentRange, String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTimeRange currentRange)? loading,
    TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(DateTimeRange currentRange, String message)? error,
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
    required TResult Function(_AstronomyPictureOfTheDayListLoaded value)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
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
  @useResult
  $Res call({DateTimeRange currentRange});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRange = null,
  }) {
    return _then(_$LoadingImpl(
      currentRange: null == currentRange
          ? _value.currentRange
          : currentRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.currentRange});

  @override
  final DateTimeRange currentRange;

  @override
  String toString() {
    return 'HomeState.loading(currentRange: $currentRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.currentRange, currentRange) ||
                other.currentRange == currentRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRange);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTimeRange currentRange) loading,
    required TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(DateTimeRange currentRange, String message) error,
  }) {
    return loading(currentRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTimeRange currentRange)? loading,
    TResult? Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(DateTimeRange currentRange, String message)? error,
  }) {
    return loading?.call(currentRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTimeRange currentRange)? loading,
    TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(DateTimeRange currentRange, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(currentRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayListLoaded value)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
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
  const factory _Loading({required final DateTimeRange currentRange}) =
      _$LoadingImpl;

  DateTimeRange get currentRange;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AstronomyPictureOfTheDayListLoadedImplCopyWith<$Res> {
  factory _$$AstronomyPictureOfTheDayListLoadedImplCopyWith(
          _$AstronomyPictureOfTheDayListLoadedImpl value,
          $Res Function(_$AstronomyPictureOfTheDayListLoadedImpl) then) =
      __$$AstronomyPictureOfTheDayListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTimeRange currentRange,
      List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList});
}

/// @nodoc
class __$$AstronomyPictureOfTheDayListLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res,
        _$AstronomyPictureOfTheDayListLoadedImpl>
    implements _$$AstronomyPictureOfTheDayListLoadedImplCopyWith<$Res> {
  __$$AstronomyPictureOfTheDayListLoadedImplCopyWithImpl(
      _$AstronomyPictureOfTheDayListLoadedImpl _value,
      $Res Function(_$AstronomyPictureOfTheDayListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRange = null,
    Object? astronomyPictureOfTheDayList = null,
  }) {
    return _then(_$AstronomyPictureOfTheDayListLoadedImpl(
      currentRange: null == currentRange
          ? _value.currentRange
          : currentRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      astronomyPictureOfTheDayList: null == astronomyPictureOfTheDayList
          ? _value._astronomyPictureOfTheDayList
          : astronomyPictureOfTheDayList // ignore: cast_nullable_to_non_nullable
              as List<AstronomyPictureOfTheDayModel>,
    ));
  }
}

/// @nodoc

class _$AstronomyPictureOfTheDayListLoadedImpl
    implements _AstronomyPictureOfTheDayListLoaded {
  const _$AstronomyPictureOfTheDayListLoadedImpl(
      {required this.currentRange,
      required final List<AstronomyPictureOfTheDayModel>
          astronomyPictureOfTheDayList})
      : _astronomyPictureOfTheDayList = astronomyPictureOfTheDayList;

  @override
  final DateTimeRange currentRange;
  final List<AstronomyPictureOfTheDayModel> _astronomyPictureOfTheDayList;
  @override
  List<AstronomyPictureOfTheDayModel> get astronomyPictureOfTheDayList {
    if (_astronomyPictureOfTheDayList is EqualUnmodifiableListView)
      return _astronomyPictureOfTheDayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_astronomyPictureOfTheDayList);
  }

  @override
  String toString() {
    return 'HomeState.astronomyPictureOfTheDayListLoaded(currentRange: $currentRange, astronomyPictureOfTheDayList: $astronomyPictureOfTheDayList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstronomyPictureOfTheDayListLoadedImpl &&
            (identical(other.currentRange, currentRange) ||
                other.currentRange == currentRange) &&
            const DeepCollectionEquality().equals(
                other._astronomyPictureOfTheDayList,
                _astronomyPictureOfTheDayList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRange,
      const DeepCollectionEquality().hash(_astronomyPictureOfTheDayList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstronomyPictureOfTheDayListLoadedImplCopyWith<
          _$AstronomyPictureOfTheDayListLoadedImpl>
      get copyWith => __$$AstronomyPictureOfTheDayListLoadedImplCopyWithImpl<
          _$AstronomyPictureOfTheDayListLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTimeRange currentRange) loading,
    required TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(DateTimeRange currentRange, String message) error,
  }) {
    return astronomyPictureOfTheDayListLoaded(
        currentRange, astronomyPictureOfTheDayList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTimeRange currentRange)? loading,
    TResult? Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(DateTimeRange currentRange, String message)? error,
  }) {
    return astronomyPictureOfTheDayListLoaded?.call(
        currentRange, astronomyPictureOfTheDayList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTimeRange currentRange)? loading,
    TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(DateTimeRange currentRange, String message)? error,
    required TResult orElse(),
  }) {
    if (astronomyPictureOfTheDayListLoaded != null) {
      return astronomyPictureOfTheDayListLoaded(
          currentRange, astronomyPictureOfTheDayList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayListLoaded value)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(_Error value) error,
  }) {
    return astronomyPictureOfTheDayListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return astronomyPictureOfTheDayListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (astronomyPictureOfTheDayListLoaded != null) {
      return astronomyPictureOfTheDayListLoaded(this);
    }
    return orElse();
  }
}

abstract class _AstronomyPictureOfTheDayListLoaded implements HomeState {
  const factory _AstronomyPictureOfTheDayListLoaded(
          {required final DateTimeRange currentRange,
          required final List<AstronomyPictureOfTheDayModel>
              astronomyPictureOfTheDayList}) =
      _$AstronomyPictureOfTheDayListLoadedImpl;

  DateTimeRange get currentRange;
  List<AstronomyPictureOfTheDayModel> get astronomyPictureOfTheDayList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstronomyPictureOfTheDayListLoadedImplCopyWith<
          _$AstronomyPictureOfTheDayListLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange currentRange, String message});
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
    Object? currentRange = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      currentRange: null == currentRange
          ? _value.currentRange
          : currentRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.currentRange, required this.message});

  @override
  final DateTimeRange currentRange;
  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(currentRange: $currentRange, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.currentRange, currentRange) ||
                other.currentRange == currentRange) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRange, message);

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
    required TResult Function(DateTimeRange currentRange) loading,
    required TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(DateTimeRange currentRange, String message) error,
  }) {
    return error(currentRange, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTimeRange currentRange)? loading,
    TResult? Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(DateTimeRange currentRange, String message)? error,
  }) {
    return error?.call(currentRange, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTimeRange currentRange)? loading,
    TResult Function(DateTimeRange currentRange,
            List<AstronomyPictureOfTheDayModel> astronomyPictureOfTheDayList)?
        astronomyPictureOfTheDayListLoaded,
    TResult Function(DateTimeRange currentRange, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(currentRange, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AstronomyPictureOfTheDayListLoaded value)
        astronomyPictureOfTheDayListLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AstronomyPictureOfTheDayListLoaded value)?
        astronomyPictureOfTheDayListLoaded,
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
  const factory _Error(
      {required final DateTimeRange currentRange,
      required final String message}) = _$ErrorImpl;

  DateTimeRange get currentRange;
  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
