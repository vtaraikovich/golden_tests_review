import '../domain.dart';

abstract class CoffeeRecipeRepository {
  /// Gets all coffee recipes.
  List<CoffeeRecipe> getCoffeeRecipes();
}
