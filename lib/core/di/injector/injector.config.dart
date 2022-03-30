// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/data_source/local/local_auth_service.dart'
    as _i7;
import '../../../features/auth/data/data_source/remote/auth_service.dart'
    as _i6;
import '../../../features/auth/data/repository/auth_repo_impl.dart' as _i13;
import '../../../features/auth/domain/repository/auth_repository.dart' as _i12;
import '../../../features/auth/domain/use_case/login_use_case.dart' as _i16;
import '../../../features/auth/domain/use_case/logout_use_case.dart' as _i17;
import '../../../features/auth/domain/use_case/register_use_case.dart' as _i19;
import '../../../features/auth/presentation/blocs/login_cubit/login_cubit.dart'
    as _i21;
import '../../../features/auth/presentation/blocs/register_cubit/register_cubit.dart'
    as _i22;
import '../../../features/profile/data/data_source/remote/profile_user_service.dart'
    as _i4;
import '../../../features/profile/data/repository/profile_repo_impl.dart'
    as _i9;
import '../../../features/profile/domain/repository/profile_repository.dart'
    as _i8;
import '../../../features/profile/domain/use_case/get_user_use_case.dart'
    as _i15;
import '../../../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i18;
import '../../../features/startup/data/repository/startup_repo_impl.dart'
    as _i11;
import '../../../features/startup/domain/repository/startup_repository.dart'
    as _i10;
import '../../../features/startup/domain/use_case/get_startup_screen_use_case.dart'
    as _i14;
import '../../../features/startup/presentation/bloc/startup_cubit.dart' as _i20;
import '../cache_init.dart' as _i24;
import '../dio_init.dart' as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i6.AuthService>(_i6.AuthService(get<_i3.Dio>()));
  gh.singleton<_i7.LocalAuthService>(
      _i7.LocalAuthServiceImpl(get<_i5.SharedPreferences>()));
  gh.singleton<_i8.ProfileRepository>(_i9.ProfileRepoImpl(
      get<_i7.LocalAuthService>(), get<_i4.ProfileUserService>()));
  gh.singleton<_i10.StartupRepository>(
      _i11.StartupRepoImpl(get<_i7.LocalAuthService>()));
  gh.factory<_i12.AuthRepository>(() =>
      _i13.AuthRepoImpl(get<_i6.AuthService>(), get<_i7.LocalAuthService>()));
  gh.factory<_i14.GetStartupScreenUseCase>(
      () => _i14.GetStartupScreenUseCase(get<_i10.StartupRepository>()));
  gh.factory<_i15.GetUserUseCase>(
      () => _i15.GetUserUseCase(get<_i8.ProfileRepository>()));
  gh.factory<_i16.LoginUseCase>(
      () => _i16.LoginUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i17.LogoutUseCase>(
      () => _i17.LogoutUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i18.ProfileCubit>(() =>
      _i18.ProfileCubit(get<_i17.LogoutUseCase>(), get<_i15.GetUserUseCase>()));
  gh.factory<_i19.RegisterUseCase>(
      () => _i19.RegisterUseCase(get<_i12.AuthRepository>()));
  gh.factory<_i20.StartupCubit>(
      () => _i20.StartupCubit(get<_i14.GetStartupScreenUseCase>()));
  gh.factory<_i21.LoginCubit>(() => _i21.LoginCubit(get<_i16.LoginUseCase>()));
  gh.factory<_i22.RegisterCubit>(
      () => _i22.RegisterCubit(get<_i19.RegisterUseCase>()));
  return get;
}

class _$DioInit extends _i23.DioInit {}

class _$CacheInit extends _i24.CacheInit {}
