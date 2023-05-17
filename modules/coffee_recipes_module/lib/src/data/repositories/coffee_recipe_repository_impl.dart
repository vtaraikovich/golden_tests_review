import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../data.dart';

@LazySingleton(as: CoffeeRecipeRepository)
class CoffeeRecipeRepositoryImpl extends CoffeeRecipeRepository {
  final CoffeeRecipeRemoteDataSource coffeeRecipeRemoteDataSource;

  CoffeeRecipeRepositoryImpl({required this.coffeeRecipeRemoteDataSource});

  @override
  List<CoffeeRecipe> getCoffeeRecipes() {
    return coffeeRecipeRemoteDataSource.getCoffeeRecipes();
  }
}
