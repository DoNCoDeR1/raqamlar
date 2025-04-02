// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawEventCopyWith<$Res> {
  factory $DrawEventCopyWith(DrawEvent value, $Res Function(DrawEvent) then) =
      _$DrawEventCopyWithImpl<$Res, DrawEvent>;
}

/// @nodoc
class _$DrawEventCopyWithImpl<$Res, $Val extends DrawEvent>
    implements $DrawEventCopyWith<$Res> {
  _$DrawEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'DrawEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DrawEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ClearCanvasImplCopyWith<$Res> {
  factory _$$ClearCanvasImplCopyWith(
          _$ClearCanvasImpl value, $Res Function(_$ClearCanvasImpl) then) =
      __$$ClearCanvasImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCanvasImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$ClearCanvasImpl>
    implements _$$ClearCanvasImplCopyWith<$Res> {
  __$$ClearCanvasImplCopyWithImpl(
      _$ClearCanvasImpl _value, $Res Function(_$ClearCanvasImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCanvasImpl implements _ClearCanvas {
  const _$ClearCanvasImpl();

  @override
  String toString() {
    return 'DrawEvent.clearCanvas()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCanvasImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return clearCanvas();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return clearCanvas?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (clearCanvas != null) {
      return clearCanvas();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return clearCanvas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return clearCanvas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (clearCanvas != null) {
      return clearCanvas(this);
    }
    return orElse();
  }
}

abstract class _ClearCanvas implements DrawEvent {
  const factory _ClearCanvas() = _$ClearCanvasImpl;
}

/// @nodoc
abstract class _$$NextNumberImplCopyWith<$Res> {
  factory _$$NextNumberImplCopyWith(
          _$NextNumberImpl value, $Res Function(_$NextNumberImpl) then) =
      __$$NextNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextNumberImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$NextNumberImpl>
    implements _$$NextNumberImplCopyWith<$Res> {
  __$$NextNumberImplCopyWithImpl(
      _$NextNumberImpl _value, $Res Function(_$NextNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextNumberImpl implements _NextNumber {
  const _$NextNumberImpl();

  @override
  String toString() {
    return 'DrawEvent.nextNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return nextNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return nextNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (nextNumber != null) {
      return nextNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return nextNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return nextNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (nextNumber != null) {
      return nextNumber(this);
    }
    return orElse();
  }
}

abstract class _NextNumber implements DrawEvent {
  const factory _NextNumber() = _$NextNumberImpl;
}

/// @nodoc
abstract class _$$PrevNumberImplCopyWith<$Res> {
  factory _$$PrevNumberImplCopyWith(
          _$PrevNumberImpl value, $Res Function(_$PrevNumberImpl) then) =
      __$$PrevNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevNumberImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$PrevNumberImpl>
    implements _$$PrevNumberImplCopyWith<$Res> {
  __$$PrevNumberImplCopyWithImpl(
      _$PrevNumberImpl _value, $Res Function(_$PrevNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PrevNumberImpl implements _PrevNumber {
  const _$PrevNumberImpl();

  @override
  String toString() {
    return 'DrawEvent.prevNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrevNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return prevNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return prevNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (prevNumber != null) {
      return prevNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return prevNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return prevNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (prevNumber != null) {
      return prevNumber(this);
    }
    return orElse();
  }
}

abstract class _PrevNumber implements DrawEvent {
  const factory _PrevNumber() = _$PrevNumberImpl;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'DrawEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements DrawEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$AddPointImplCopyWith<$Res> {
  factory _$$AddPointImplCopyWith(
          _$AddPointImpl value, $Res Function(_$AddPointImpl) then) =
      __$$AddPointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ui.Offset? point});
}

/// @nodoc
class __$$AddPointImplCopyWithImpl<$Res>
    extends _$DrawEventCopyWithImpl<$Res, _$AddPointImpl>
    implements _$$AddPointImplCopyWith<$Res> {
  __$$AddPointImplCopyWithImpl(
      _$AddPointImpl _value, $Res Function(_$AddPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_$AddPointImpl(
      freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as ui.Offset?,
    ));
  }
}

/// @nodoc

class _$AddPointImpl implements _AddPoint {
  const _$AddPointImpl(this.point);

  @override
  final ui.Offset? point;

  @override
  String toString() {
    return 'DrawEvent.addPoint(point: $point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPointImpl &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPointImplCopyWith<_$AddPointImpl> get copyWith =>
      __$$AddPointImplCopyWithImpl<_$AddPointImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() clearCanvas,
    required TResult Function() nextNumber,
    required TResult Function() prevNumber,
    required TResult Function() submit,
    required TResult Function(ui.Offset? point) addPoint,
  }) {
    return addPoint(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? clearCanvas,
    TResult? Function()? nextNumber,
    TResult? Function()? prevNumber,
    TResult? Function()? submit,
    TResult? Function(ui.Offset? point)? addPoint,
  }) {
    return addPoint?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? clearCanvas,
    TResult Function()? nextNumber,
    TResult Function()? prevNumber,
    TResult Function()? submit,
    TResult Function(ui.Offset? point)? addPoint,
    required TResult orElse(),
  }) {
    if (addPoint != null) {
      return addPoint(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ClearCanvas value) clearCanvas,
    required TResult Function(_NextNumber value) nextNumber,
    required TResult Function(_PrevNumber value) prevNumber,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return addPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ClearCanvas value)? clearCanvas,
    TResult? Function(_NextNumber value)? nextNumber,
    TResult? Function(_PrevNumber value)? prevNumber,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddPoint value)? addPoint,
  }) {
    return addPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ClearCanvas value)? clearCanvas,
    TResult Function(_NextNumber value)? nextNumber,
    TResult Function(_PrevNumber value)? prevNumber,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (addPoint != null) {
      return addPoint(this);
    }
    return orElse();
  }
}

abstract class _AddPoint implements DrawEvent {
  const factory _AddPoint(final ui.Offset? point) = _$AddPointImpl;

  ui.Offset? get point;

  /// Create a copy of DrawEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPointImplCopyWith<_$AddPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawState {
  Status get status => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  NumberEntity? get number => throw _privateConstructorUsedError;
  String? get percent => throw _privateConstructorUsedError;
  List<Offset?> get points => throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>>? get globalKey =>
      throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  /// Create a copy of DrawState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrawStateCopyWith<DrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawStateCopyWith<$Res> {
  factory $DrawStateCopyWith(DrawState value, $Res Function(DrawState) then) =
      _$DrawStateCopyWithImpl<$Res, DrawState>;
  @useResult
  $Res call(
      {Status status,
      Failure? error,
      NumberEntity? number,
      String? percent,
      List<Offset?> points,
      GlobalKey<State<StatefulWidget>>? globalKey,
      File? imageFile});
}

/// @nodoc
class _$DrawStateCopyWithImpl<$Res, $Val extends DrawState>
    implements $DrawStateCopyWith<$Res> {
  _$DrawStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? number = freezed,
    Object? percent = freezed,
    Object? points = null,
    Object? globalKey = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberEntity?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset?>,
      globalKey: freezed == globalKey
          ? _value.globalKey
          : globalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawStateImplCopyWith<$Res>
    implements $DrawStateCopyWith<$Res> {
  factory _$$DrawStateImplCopyWith(
          _$DrawStateImpl value, $Res Function(_$DrawStateImpl) then) =
      __$$DrawStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure? error,
      NumberEntity? number,
      String? percent,
      List<Offset?> points,
      GlobalKey<State<StatefulWidget>>? globalKey,
      File? imageFile});
}

/// @nodoc
class __$$DrawStateImplCopyWithImpl<$Res>
    extends _$DrawStateCopyWithImpl<$Res, _$DrawStateImpl>
    implements _$$DrawStateImplCopyWith<$Res> {
  __$$DrawStateImplCopyWithImpl(
      _$DrawStateImpl _value, $Res Function(_$DrawStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? number = freezed,
    Object? percent = freezed,
    Object? points = null,
    Object? globalKey = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$DrawStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberEntity?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset?>,
      globalKey: freezed == globalKey
          ? _value.globalKey
          : globalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$DrawStateImpl implements _DrawState {
  const _$DrawStateImpl(
      {this.status = Status.initial,
      this.error,
      this.number,
      this.percent,
      final List<Offset?> points = const [],
      this.globalKey,
      this.imageFile})
      : _points = points;

  @override
  @JsonKey()
  final Status status;
  @override
  final Failure? error;
  @override
  final NumberEntity? number;
  @override
  final String? percent;
  final List<Offset?> _points;
  @override
  @JsonKey()
  List<Offset?> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final GlobalKey<State<StatefulWidget>>? globalKey;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'DrawState(status: $status, error: $error, number: $number, percent: $percent, points: $points, globalKey: $globalKey, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.globalKey, globalKey) ||
                other.globalKey == globalKey) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error, number, percent,
      const DeepCollectionEquality().hash(_points), globalKey, imageFile);

  /// Create a copy of DrawState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawStateImplCopyWith<_$DrawStateImpl> get copyWith =>
      __$$DrawStateImplCopyWithImpl<_$DrawStateImpl>(this, _$identity);
}

abstract class _DrawState implements DrawState {
  const factory _DrawState(
      {final Status status,
      final Failure? error,
      final NumberEntity? number,
      final String? percent,
      final List<Offset?> points,
      final GlobalKey<State<StatefulWidget>>? globalKey,
      final File? imageFile}) = _$DrawStateImpl;

  @override
  Status get status;
  @override
  Failure? get error;
  @override
  NumberEntity? get number;
  @override
  String? get percent;
  @override
  List<Offset?> get points;
  @override
  GlobalKey<State<StatefulWidget>>? get globalKey;
  @override
  File? get imageFile;

  /// Create a copy of DrawState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrawStateImplCopyWith<_$DrawStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
