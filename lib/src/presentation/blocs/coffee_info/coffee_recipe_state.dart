part of 'coffee_recipe_cubit.dart';

abstract class CoffeeRecipeState {
  final List<CoffeeRecipe> coffees;

  const CoffeeRecipeState({
    required this.coffees,
  });
}

class CoffeeRecipeInitial extends CoffeeRecipeState {
  const CoffeeRecipeInitial(
    List<CoffeeRecipe> coffees,
  ) : super(coffees: coffees);
}

class CoffeeRecipeUpdate extends CoffeeRecipeState {
  const CoffeeRecipeUpdate(
    List<CoffeeRecipe> coffees,
  ) : super(coffees: coffees);
}
