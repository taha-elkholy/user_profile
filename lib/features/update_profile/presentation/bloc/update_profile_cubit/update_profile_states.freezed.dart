// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateProfileStatesTearOff {
  const _$UpdateProfileStatesTearOff();

  UpdateProfileInitialState initial() {
    return const UpdateProfileInitialState();
  }

  UpdateProfileLoadingState loading() {
    return const UpdateProfileLoadingState();
  }

  UpdateProfileLoadedState loaded({required User user}) {
    return UpdateProfileLoadedState(
      user: user,
    );
  }

  UpdateProfileErrorState error({required String error}) {
    return UpdateProfileErrorState(
      error: error,
    );
  }

  UploadImageLoadingState uploadImageLoading() {
    return const UploadImageLoadingState();
  }

  UploadImageLoadedState uploadImageLoaded({required String imageUrl}) {
    return UploadImageLoadedState(
      imageUrl: imageUrl,
    );
  }

  UploadImageErrorState uploadImageError({required String error}) {
    return UploadImageErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $UpdateProfileStates = _$UpdateProfileStatesTearOff();

/// @nodoc
mixin _$UpdateProfileStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStatesCopyWith<$Res> {
  factory $UpdateProfileStatesCopyWith(
          UpdateProfileStates value, $Res Function(UpdateProfileStates) then) =
      _$UpdateProfileStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UpdateProfileStatesCopyWith<$Res> {
  _$UpdateProfileStatesCopyWithImpl(this._value, this._then);

  final UpdateProfileStates _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileStates) _then;
}

/// @nodoc
abstract class $UpdateProfileInitialStateCopyWith<$Res> {
  factory $UpdateProfileInitialStateCopyWith(UpdateProfileInitialState value,
          $Res Function(UpdateProfileInitialState) then) =
      _$UpdateProfileInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileInitialStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UpdateProfileInitialStateCopyWith<$Res> {
  _$UpdateProfileInitialStateCopyWithImpl(UpdateProfileInitialState _value,
      $Res Function(UpdateProfileInitialState) _then)
      : super(_value, (v) => _then(v as UpdateProfileInitialState));

  @override
  UpdateProfileInitialState get _value =>
      super._value as UpdateProfileInitialState;
}

/// @nodoc

class _$UpdateProfileInitialState implements UpdateProfileInitialState {
  const _$UpdateProfileInitialState();

  @override
  String toString() {
    return 'UpdateProfileStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
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
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileInitialState implements UpdateProfileStates {
  const factory UpdateProfileInitialState() = _$UpdateProfileInitialState;
}

/// @nodoc
abstract class $UpdateProfileLoadingStateCopyWith<$Res> {
  factory $UpdateProfileLoadingStateCopyWith(UpdateProfileLoadingState value,
          $Res Function(UpdateProfileLoadingState) then) =
      _$UpdateProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileLoadingStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UpdateProfileLoadingStateCopyWith<$Res> {
  _$UpdateProfileLoadingStateCopyWithImpl(UpdateProfileLoadingState _value,
      $Res Function(UpdateProfileLoadingState) _then)
      : super(_value, (v) => _then(v as UpdateProfileLoadingState));

  @override
  UpdateProfileLoadingState get _value =>
      super._value as UpdateProfileLoadingState;
}

/// @nodoc

class _$UpdateProfileLoadingState implements UpdateProfileLoadingState {
  const _$UpdateProfileLoadingState();

  @override
  String toString() {
    return 'UpdateProfileStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
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
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileLoadingState implements UpdateProfileStates {
  const factory UpdateProfileLoadingState() = _$UpdateProfileLoadingState;
}

/// @nodoc
abstract class $UpdateProfileLoadedStateCopyWith<$Res> {
  factory $UpdateProfileLoadedStateCopyWith(UpdateProfileLoadedState value,
          $Res Function(UpdateProfileLoadedState) then) =
      _$UpdateProfileLoadedStateCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UpdateProfileLoadedStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UpdateProfileLoadedStateCopyWith<$Res> {
  _$UpdateProfileLoadedStateCopyWithImpl(UpdateProfileLoadedState _value,
      $Res Function(UpdateProfileLoadedState) _then)
      : super(_value, (v) => _then(v as UpdateProfileLoadedState));

  @override
  UpdateProfileLoadedState get _value =>
      super._value as UpdateProfileLoadedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UpdateProfileLoadedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UpdateProfileLoadedState implements UpdateProfileLoadedState {
  const _$UpdateProfileLoadedState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UpdateProfileStates.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileLoadedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UpdateProfileLoadedStateCopyWith<UpdateProfileLoadedState> get copyWith =>
      _$UpdateProfileLoadedStateCopyWithImpl<UpdateProfileLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileLoadedState implements UpdateProfileStates {
  const factory UpdateProfileLoadedState({required User user}) =
      _$UpdateProfileLoadedState;

  User get user;
  @JsonKey(ignore: true)
  $UpdateProfileLoadedStateCopyWith<UpdateProfileLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileErrorStateCopyWith<$Res> {
  factory $UpdateProfileErrorStateCopyWith(UpdateProfileErrorState value,
          $Res Function(UpdateProfileErrorState) then) =
      _$UpdateProfileErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$UpdateProfileErrorStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UpdateProfileErrorStateCopyWith<$Res> {
  _$UpdateProfileErrorStateCopyWithImpl(UpdateProfileErrorState _value,
      $Res Function(UpdateProfileErrorState) _then)
      : super(_value, (v) => _then(v as UpdateProfileErrorState));

  @override
  UpdateProfileErrorState get _value => super._value as UpdateProfileErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UpdateProfileErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileErrorState implements UpdateProfileErrorState {
  const _$UpdateProfileErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateProfileStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UpdateProfileErrorStateCopyWith<UpdateProfileErrorState> get copyWith =>
      _$UpdateProfileErrorStateCopyWithImpl<UpdateProfileErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
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
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileErrorState implements UpdateProfileStates {
  const factory UpdateProfileErrorState({required String error}) =
      _$UpdateProfileErrorState;

  String get error;
  @JsonKey(ignore: true)
  $UpdateProfileErrorStateCopyWith<UpdateProfileErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageLoadingStateCopyWith<$Res> {
  factory $UploadImageLoadingStateCopyWith(UploadImageLoadingState value,
          $Res Function(UploadImageLoadingState) then) =
      _$UploadImageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadImageLoadingStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UploadImageLoadingStateCopyWith<$Res> {
  _$UploadImageLoadingStateCopyWithImpl(UploadImageLoadingState _value,
      $Res Function(UploadImageLoadingState) _then)
      : super(_value, (v) => _then(v as UploadImageLoadingState));

  @override
  UploadImageLoadingState get _value => super._value as UploadImageLoadingState;
}

/// @nodoc

class _$UploadImageLoadingState implements UploadImageLoadingState {
  const _$UploadImageLoadingState();

  @override
  String toString() {
    return 'UpdateProfileStates.uploadImageLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadImageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return uploadImageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return uploadImageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageLoading != null) {
      return uploadImageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return uploadImageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return uploadImageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageLoading != null) {
      return uploadImageLoading(this);
    }
    return orElse();
  }
}

abstract class UploadImageLoadingState implements UpdateProfileStates {
  const factory UploadImageLoadingState() = _$UploadImageLoadingState;
}

/// @nodoc
abstract class $UploadImageLoadedStateCopyWith<$Res> {
  factory $UploadImageLoadedStateCopyWith(UploadImageLoadedState value,
          $Res Function(UploadImageLoadedState) then) =
      _$UploadImageLoadedStateCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$UploadImageLoadedStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UploadImageLoadedStateCopyWith<$Res> {
  _$UploadImageLoadedStateCopyWithImpl(UploadImageLoadedState _value,
      $Res Function(UploadImageLoadedState) _then)
      : super(_value, (v) => _then(v as UploadImageLoadedState));

  @override
  UploadImageLoadedState get _value => super._value as UploadImageLoadedState;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(UploadImageLoadedState(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadImageLoadedState implements UploadImageLoadedState {
  const _$UploadImageLoadedState({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UpdateProfileStates.uploadImageLoaded(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadImageLoadedState &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  $UploadImageLoadedStateCopyWith<UploadImageLoadedState> get copyWith =>
      _$UploadImageLoadedStateCopyWithImpl<UploadImageLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return uploadImageLoaded(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return uploadImageLoaded?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageLoaded != null) {
      return uploadImageLoaded(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return uploadImageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return uploadImageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageLoaded != null) {
      return uploadImageLoaded(this);
    }
    return orElse();
  }
}

abstract class UploadImageLoadedState implements UpdateProfileStates {
  const factory UploadImageLoadedState({required String imageUrl}) =
      _$UploadImageLoadedState;

  String get imageUrl;
  @JsonKey(ignore: true)
  $UploadImageLoadedStateCopyWith<UploadImageLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageErrorStateCopyWith<$Res> {
  factory $UploadImageErrorStateCopyWith(UploadImageErrorState value,
          $Res Function(UploadImageErrorState) then) =
      _$UploadImageErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$UploadImageErrorStateCopyWithImpl<$Res>
    extends _$UpdateProfileStatesCopyWithImpl<$Res>
    implements $UploadImageErrorStateCopyWith<$Res> {
  _$UploadImageErrorStateCopyWithImpl(
      UploadImageErrorState _value, $Res Function(UploadImageErrorState) _then)
      : super(_value, (v) => _then(v as UploadImageErrorState));

  @override
  UploadImageErrorState get _value => super._value as UploadImageErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UploadImageErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadImageErrorState implements UploadImageErrorState {
  const _$UploadImageErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateProfileStates.uploadImageError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadImageErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UploadImageErrorStateCopyWith<UploadImageErrorState> get copyWith =>
      _$UploadImageErrorStateCopyWithImpl<UploadImageErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
    required TResult Function() uploadImageLoading,
    required TResult Function(String imageUrl) uploadImageLoaded,
    required TResult Function(String error) uploadImageError,
  }) {
    return uploadImageError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
  }) {
    return uploadImageError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    TResult Function()? uploadImageLoading,
    TResult Function(String imageUrl)? uploadImageLoaded,
    TResult Function(String error)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageError != null) {
      return uploadImageError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileLoadedState value) loaded,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UploadImageLoadingState value) uploadImageLoading,
    required TResult Function(UploadImageLoadedState value) uploadImageLoaded,
    required TResult Function(UploadImageErrorState value) uploadImageError,
  }) {
    return uploadImageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
  }) {
    return uploadImageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UploadImageLoadingState value)? uploadImageLoading,
    TResult Function(UploadImageLoadedState value)? uploadImageLoaded,
    TResult Function(UploadImageErrorState value)? uploadImageError,
    required TResult orElse(),
  }) {
    if (uploadImageError != null) {
      return uploadImageError(this);
    }
    return orElse();
  }
}

abstract class UploadImageErrorState implements UpdateProfileStates {
  const factory UploadImageErrorState({required String error}) =
      _$UploadImageErrorState;

  String get error;
  @JsonKey(ignore: true)
  $UploadImageErrorStateCopyWith<UploadImageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
