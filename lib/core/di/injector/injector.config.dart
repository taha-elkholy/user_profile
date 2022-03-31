// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/data_source/local/local_auth_service.dart'
    as _i8;
import '../../../features/auth/data/data_source/remote/auth_service.dart'
    as _i7;
import '../../../features/auth/data/repository/auth_repo_impl.dart' as _i18;
import '../../../features/auth/domain/repository/auth_repository.dart' as _i17;
import '../../../features/auth/domain/use_case/login_use_case.dart' as _i21;
import '../../../features/auth/domain/use_case/logout_use_case.dart' as _i22;
import '../../../features/auth/domain/use_case/register_use_case.dart' as _i24;
import '../../../features/auth/presentation/blocs/login_cubit/login_cubit.dart'
    as _i27;
import '../../../features/auth/presentation/blocs/register_cubit/register_cubit.dart'
    as _i28;
import '../../../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i4;
import '../../../features/profile/data/repository/profile_repo_impl.dart'
    as _i10;
import '../../../features/profile/domain/repository/profile_repository.dart'
    as _i9;
import '../../../features/profile/domain/use_case/get_user_use_case.dart'
    as _i20;
import '../../../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i23;
import '../../../features/startup/data/repository/startup_repo_impl.dart'
    as _i12;
import '../../../features/startup/domain/repository/startup_repository.dart'
    as _i11;
import '../../../features/startup/domain/use_case/get_startup_screen_use_case.dart'
    as _i19;
import '../../../features/startup/presentation/bloc/startup_cubit.dart' as _i25;
import '../../../features/update_profile/data/data_source/remote/update_profile_user_service.dart'
    as _i6;
import '../../../features/update_profile/data/repository/update_profile_repo_impl.dart'
    as _i14;
import '../../../features/update_profile/domain/repository/update_profile_repository.dart'
    as _i13;
import '../../../features/update_profile/domain/use_case/update_user_use_case.dart'
    as _i15;
import '../../../features/update_profile/domain/use_case/upload_image_use_case.dart'
    as _i16;
import '../../../features/update_profile/presentation/bloc/update_profile_cubit/update_profile_cubit.dart'
    as _i26;
import '../cache_init.dart' as _i30;
import '../dio_init.dart' as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInit = _$DioInit();
  final cacheInit = _$CacheInit();
  gh.factory<_i3.Dio>(() => dioInit.dio);
  gh.singleton<_i4.ProfileUserService>(_i4.ProfileUserService(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(() => cacheInit.cacheInit,
      preResolve: true);
  gh.singleton<_i6.UpdateProfileUserService>(
      _i6.UpdateProfileUserService(get<_i3.Dio>()));
  gh.singleton<_i7.AuthService>(_i7.AuthService(get<_i3.Dio>()));
  gh.singleton<_i8.LocalAuthService>(
      _i8.LocalAuthServiceImpl(get<_i5.SharedPreferences>()));
  gh.singleton<_i9.ProfileRepository>(_i10.ProfileRepoImpl(
      get<_i8.LocalAuthService>(), get<_i4.ProfileUserService>()));
  gh.singleton<_i11.StartupRepository>(
      _i12.StartupRepoImpl(get<_i8.LocalAuthService>()));
  gh.singleton<_i13.UpdateProfileRepository>(_i14.UpdateProfileRepoImpl(
      get<_i8.LocalAuthService>(), get<_i6.UpdateProfileUserService>()));
  gh.factory<_i15.UpdateUserUseCase>(
      () => _i15.UpdateUserUseCase(get<_i13.UpdateProfileRepository>()));
  gh.factory<_i16.UploadImageUseCase>(
      () => _i16.UploadImageUseCase(get<_i13.UpdateProfileRepository>()));
  gh.factory<_i17.AuthRepository>(() =>
      _i18.AuthRepoImpl(get<_i7.AuthService>(), get<_i8.LocalAuthService>()));
  gh.factory<_i19.GetStartupScreenUseCase>(
      () => _i19.GetStartupScreenUseCase(get<_i11.StartupRepository>()));
  gh.factory<_i20.GetUserUseCase>(
      () => _i20.GetUserUseCase(get<_i9.ProfileRepository>()));
  gh.factory<_i21.LoginUseCase>(
      () => _i21.LoginUseCase(get<_i17.AuthRepository>()));
  gh.factory<_i22.LogoutUseCase>(
      () => _i22.LogoutUseCase(get<_i17.AuthRepository>()));
  gh.factory<_i23.ProfileCubit>(() =>
      _i23.ProfileCubit(get<_i22.LogoutUseCase>(), get<_i20.GetUserUseCase>()));
  gh.factory<_i24.RegisterUseCase>(
      () => _i24.RegisterUseCase(get<_i17.AuthRepository>()));
  gh.factory<_i25.StartupCubit>(
      () => _i25.StartupCubit(get<_i19.GetStartupScreenUseCase>()));
  gh.factory<_i26.UpdateProfileCubit>(() => _i26.UpdateProfileCubit(
      get<_i15.UpdateUserUseCase>(), get<_i16.UploadImageUseCase>()));
  gh.factory<_i27.LoginCubit>(() => _i27.LoginCubit(get<_i21.LoginUseCase>()));
  gh.factory<_i28.RegisterCubit>(
      () => _i28.RegisterCubit(get<_i24.RegisterUseCase>()));
  return get;
}

class _$DioInit extends _i29.DioInit {}

class _$CacheInit extends _i30.CacheInit {}
