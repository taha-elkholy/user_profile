// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../../features/auth/data/data_source/local/local_auth_service.dart'
    as _i6;
import '../../../features/auth/data/data_source/remote/auth_service.dart'
    as _i5;
import '../../../features/auth/data/repository/auth_repo_impl.dart' as _i8;
import '../../../features/auth/domain/repository/auth_repository.dart' as _i7;
import '../../../features/auth/domain/use_case/login_use_case.dart' as _i9;
import '../../../features/auth/domain/use_case/logout_use_case.dart' as _i10;
import '../../../features/auth/domain/use_case/register_use_case.dart' as _i12;
import '../../../features/auth/presentation/blocs/login_cubit/login_cubit.dart'
    as _i13;
import '../../../features/auth/presentation/blocs/register_cubit/register_cubit.dart'
    as _i14;
import '../../../features/profile/presentation/bloc/profile_cubit/profile_cubit.dart'
    as _i11;
import '../cache_init.dart' as _i16;
import '../dio_init.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInit = _$DioInit();
  final cacheInit = _$CacheInit();
  gh.factory<_i3.Dio>(() => dioInit.dio);
  await gh.factoryAsync<_i4.SharedPreferences>(() => cacheInit.cacheInit,
      preResolve: true);
  gh.singleton<_i5.AuthService>(_i5.AuthService(get<_i3.Dio>()));
  gh.singleton<_i6.LocalAuthService>(
      _i6.LocalAuthServiceImpl(get<_i4.SharedPreferences>()));
  gh.factory<_i7.AuthRepository>(() =>
      _i8.AuthRepoImpl(get<_i5.AuthService>(), get<_i6.LocalAuthService>()));
  gh.factory<_i9.LoginUseCase>(
      () => _i9.LoginUseCase(get<_i7.AuthRepository>()));
  gh.factory<_i10.LogoutUseCase>(
      () => _i10.LogoutUseCase(get<_i7.AuthRepository>()));
  gh.factory<_i11.ProfileCubit>(
      () => _i11.ProfileCubit(get<_i10.LogoutUseCase>()));
  gh.factory<_i12.RegisterUseCase>(
      () => _i12.RegisterUseCase(get<_i7.AuthRepository>()));
  gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(get<_i9.LoginUseCase>()));
  gh.factory<_i14.RegisterCubit>(
      () => _i14.RegisterCubit(get<_i12.RegisterUseCase>()));
  return get;
}

class _$DioInit extends _i15.DioInit {}

class _$CacheInit extends _i16.CacheInit {}
