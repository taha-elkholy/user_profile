// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'startup_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StartupStatesTearOff {
  const _$StartupStatesTearOff();

  StartupInitialState initial() {
    return const StartupInitialState();
  }

  StartupLoadingState loading() {
    return const StartupLoadingState();
  }

  StartupLoadedState loaded({required Widget startupScreen}) {
    return StartupLoadedState(
      startupScreen: startupScreen,
    );
  }

  StartupErrorState error({required String error}) {
    return StartupErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $StartupStates = _$StartupStatesTearOff();

/// @nodoc
mixin _$StartupStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget startupScreen) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitialState value) initial,
    required TResult Function(StartupLoadingState value) loading,
    required TResult Function(StartupLoadedState value) loaded,
    required TResult Function(StartupErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupStatesCopyWith<$Res> {
  factory $StartupStatesCopyWith(
          StartupStates value, $Res Function(StartupStates) then) =
      _$StartupStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartupStatesCopyWithImpl<$Res>
    implements $StartupStatesCopyWith<$Res> {
  _$StartupStatesCopyWithImpl(this._value, this._then);

  final StartupStates _value;
  // ignore: unused_field
  final $Res Function(StartupStates) _then;
}

/// @nodoc
abstract class $StartupInitialStateCopyWith<$Res> {
  factory $StartupInitialStateCopyWith(
          StartupInitialState value, $Res Function(StartupInitialState) then) =
      _$StartupInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartupInitialStateCopyWithImpl<$Res>
    extends _$StartupStatesCopyWithImpl<$Res>
    implements $StartupInitialStateCopyWith<$Res> {
  _$StartupInitialStateCopyWithImpl(
      StartupInitialState _value, $Res Function(StartupInitialState) _then)
      : super(_value, (v) => _then(v as StartupInitialState));

  @override
  StartupInitialState get _value => super._value as StartupInitialState;
}

/// @nodoc

class _$StartupInitialState implements StartupInitialState {
  const _$StartupInitialState();

  @override
  String toString() {
    return 'StartupStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartupInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget startupScreen) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(StartupInitialState value) initial,
    required TResult Function(StartupLoadingState value) loading,
    required TResult Function(StartupLoadedState value) loaded,
    required TResult Function(StartupErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StartupInitialState implements StartupStates {
  const factory StartupInitialState() = _$StartupInitialState;
}

/// @nodoc
abstract class $StartupLoadingStateCopyWith<$Res> {
  factory $StartupLoadingStateCopyWith(
          StartupLoadingState value, $Res Function(StartupLoadingState) then) =
      _$StartupLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartupLoadingStateCopyWithImpl<$Res>
    extends _$StartupStatesCopyWithImpl<$Res>
    implements $StartupLoadingStateCopyWith<$Res> {
  _$StartupLoadingStateCopyWithImpl(
      StartupLoadingState _value, $Res Function(StartupLoadingState) _then)
      : super(_value, (v) => _then(v as StartupLoadingState));

  @override
  StartupLoadingState get _value => super._value as StartupLoadingState;
}

/// @nodoc

class _$StartupLoadingState implements StartupLoadingState {
  const _$StartupLoadingState();

  @override
  String toString() {
    return 'StartupStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartupLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget startupScreen) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(StartupInitialState value) initial,
    required TResult Function(StartupLoadingState value) loading,
    required TResult Function(StartupLoadedState value) loaded,
    required TResult Function(StartupErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StartupLoadingState implements StartupStates {
  const factory StartupLoadingState() = _$StartupLoadingState;
}

/// @nodoc
abstract class $StartupLoadedStateCopyWith<$Res> {
  factory $StartupLoadedStateCopyWith(
          StartupLoadedState value, $Res Function(StartupLoadedState) then) =
      _$StartupLoadedStateCopyWithImpl<$Res>;
  $Res call({Widget startupScreen});
}

/// @nodoc
class _$StartupLoadedStateCopyWithImpl<$Res>
    extends _$StartupStatesCopyWithImpl<$Res>
    implements $StartupLoadedStateCopyWith<$Res> {
  _$StartupLoadedStateCopyWithImpl(
      StartupLoadedState _value, $Res Function(StartupLoadedState) _then)
      : super(_value, (v) => _then(v as StartupLoadedState));

  @override
  StartupLoadedState get _value => super._value as StartupLoadedState;

  @override
  $Res call({
    Object? startupScreen = freezed,
  }) {
    return _then(StartupLoadedState(
      startupScreen: startupScreen == freezed
          ? _value.startupScreen
          : startupScreen // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$StartupLoadedState implements StartupLoadedState {
  const _$StartupLoadedState({required this.startupScreen});

  @override
  final Widget startupScreen;

  @override
  String toString() {
    return 'StartupStates.loaded(startupScreen: $startupScreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StartupLoadedState &&
            const DeepCollectionEquality()
                .equals(other.startupScreen, startupScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(startupScreen));

  @JsonKey(ignore: true)
  @override
  $StartupLoadedStateCopyWith<StartupLoadedState> get copyWith =>
      _$StartupLoadedStateCopyWithImpl<StartupLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget startupScreen) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(startupScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(startupScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(startupScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitialState value) initial,
    required TResult Function(StartupLoadingState value) loading,
    required TResult Function(StartupLoadedState value) loaded,
    required TResult Function(StartupErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StartupLoadedState implements StartupStates {
  const factory StartupLoadedState({required Widget startupScreen}) =
      _$StartupLoadedState;

  Widget get startupScreen;
  @JsonKey(ignore: true)
  $StartupLoadedStateCopyWith<StartupLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupErrorStateCopyWith<$Res> {
  factory $StartupErrorStateCopyWith(
          StartupErrorState value, $Res Function(StartupErrorState) then) =
      _$StartupErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$StartupErrorStateCopyWithImpl<$Res>
    extends _$StartupStatesCopyWithImpl<$Res>
    implements $StartupErrorStateCopyWith<$Res> {
  _$StartupErrorStateCopyWithImpl(
      StartupErrorState _value, $Res Function(StartupErrorState) _then)
      : super(_value, (v) => _then(v as StartupErrorState));

  @override
  StartupErrorState get _value => super._value as StartupErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(StartupErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartupErrorState implements StartupErrorState {
  const _$StartupErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StartupStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StartupErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $StartupErrorStateCopyWith<StartupErrorState> get copyWith =>
      _$StartupErrorStateCopyWithImpl<StartupErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Widget startupScreen) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Widget startupScreen)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitialState value) initial,
    required TResult Function(StartupLoadingState value) loading,
    required TResult Function(StartupLoadedState value) loaded,
    required TResult Function(StartupErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitialState value)? initial,
    TResult Function(StartupLoadingState value)? loading,
    TResult Function(StartupLoadedState value)? loaded,
    TResult Function(StartupErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StartupErrorState implements StartupStates {
  const factory StartupErrorState({required String error}) =
      _$StartupErrorState;

  String get error;
  @JsonKey(ignore: true)
  $StartupErrorStateCopyWith<StartupErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
