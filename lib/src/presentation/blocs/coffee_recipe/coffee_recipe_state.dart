part of 'coffee_recipe_cubit.dart';

abstract class CoffeeRecipeState {
  const CoffeeRecipeState();
}

class CoffeeRecipeInitial extends CoffeeRecipeState {
  const CoffeeRecipeInitial();
}

class CoffeeRecipeLoading extends CoffeeRecipeState {
  const CoffeeRecipeLoading();
}

class CoffeeRecipeLoaded extends CoffeeRecipeState {
  final List<CoffeeRecipe> coffeeRecipes;

  const CoffeeRecipeLoaded(this.coffeeRecipes);
}

class CoffeeRecipeFailure extends CoffeeRecipeState {
  const CoffeeRecipeFailure();
}
