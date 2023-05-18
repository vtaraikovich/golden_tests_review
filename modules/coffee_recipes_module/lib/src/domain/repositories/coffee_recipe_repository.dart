import '../domain.dart';

abstract class CoffeeRecipeRepository {
  /// Gets all coffee recipes.
  Future<List<CoffeeRecipe>> getCoffeeRecipes();
}
