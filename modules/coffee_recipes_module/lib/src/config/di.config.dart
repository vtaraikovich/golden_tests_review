// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data.dart' as _i6;
import '../data/datasources/coffee_recipe_remote_datasource.dart' as _i3;
import '../data/repositories/coffee_recipe_repository_impl.dart' as _i5;
import '../domain/domain.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CoffeeRecipeRemoteDataSource>(
      () => _i3.CoffeeRecipeRemoteDataSource());
  gh.lazySingleton<_i4.CoffeeRecipeRepository>(() =>
      _i5.CoffeeRecipeRepositoryImpl(
          coffeeRecipeRemoteDataSource:
              gh<_i6.CoffeeRecipeRemoteDataSource>()));
  return getIt;
}
