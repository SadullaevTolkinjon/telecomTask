// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBuildableCopyWith<HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableCopyWith<$Res> {
  factory $HomeBuildableCopyWith(
          HomeBuildable value, $Res Function(HomeBuildable) then) =
      _$HomeBuildableCopyWithImpl<$Res, HomeBuildable>;
  @useResult
  $Res call({bool loading, bool success, bool failed, dynamic error});
}

/// @nodoc
class _$HomeBuildableCopyWithImpl<$Res, $Val extends HomeBuildable>
    implements $HomeBuildableCopyWith<$Res> {
  _$HomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeBuildableCopyWith<$Res>
    implements $HomeBuildableCopyWith<$Res> {
  factory _$$_HomeBuildableCopyWith(
          _$_HomeBuildable value, $Res Function(_$_HomeBuildable) then) =
      __$$_HomeBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool success, bool failed, dynamic error});
}

/// @nodoc
class __$$_HomeBuildableCopyWithImpl<$Res>
    extends _$HomeBuildableCopyWithImpl<$Res, _$_HomeBuildable>
    implements _$$_HomeBuildableCopyWith<$Res> {
  __$$_HomeBuildableCopyWithImpl(
      _$_HomeBuildable _value, $Res Function(_$_HomeBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
  }) {
    return _then(_$_HomeBuildable(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_HomeBuildable implements _HomeBuildable {
  const _$_HomeBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'HomeBuildable(loading: $loading, success: $success, failed: $failed, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeBuildableCopyWith<_$_HomeBuildable> get copyWith =>
      __$$_HomeBuildableCopyWithImpl<_$_HomeBuildable>(this, _$identity);
}

abstract class _HomeBuildable implements HomeBuildable {
  const factory _HomeBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error}) = _$_HomeBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeBuildableCopyWith<_$_HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
