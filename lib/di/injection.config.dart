// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:new_architecture/data/api/api.dart' as _i3;
import 'package:new_architecture/data/api/auth_api.dart' as _i4;
import 'package:new_architecture/data/preferences/token_preferences.dart'
    as _i6;
import 'package:new_architecture/domain/repository/auth/auth_repository.dart'
    as _i7;
import 'package:new_architecture/presentation/home/cubit/home_cubit.dart'
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'data_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.Api>(() => _i3.Api());
    gh.factory<_i4.AuthApi>(() => _i4.AuthApi(gh<_i3.Api>()));
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i6.TokenPreference>(
        () => _i6.TokenPreference(gh<_i5.SharedPreferences>()));
    gh.factory<_i7.AuthRepository>(
        () => _i7.AuthRepository(gh<_i6.TokenPreference>()));
    gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(gh<_i7.AuthRepository>()));
    return this;
  }
}

class _$DataModule extends _i9.DataModule {}
