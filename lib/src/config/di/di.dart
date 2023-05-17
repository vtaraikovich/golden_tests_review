import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureAppDependencies() {
  configureCoffeeRecipeModuleDependencies(getIt);

  $initGetIt(getIt);
}
