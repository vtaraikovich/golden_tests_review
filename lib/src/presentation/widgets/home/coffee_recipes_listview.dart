import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';

import '../../presentation.dart';

class CoffeeRecipesListview extends StatelessWidget {
  final List<CoffeeRecipe> coffeeRecipes;

  const CoffeeRecipesListview({
    required this.coffeeRecipes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffeeRecipes.length,
      itemBuilder: (_, i) {
        final coffeeRecipe = coffeeRecipes[i];

        return CoffeeRecipeCard(
          title: coffeeRecipe.type.toUpperCase(),
          subtitle: coffeeRecipe.name,
          imagePath: coffeeRecipe.imagePath,
          time: coffeeRecipe.time,
          onTap: () => onCardTap(context, coffeeRecipe),
        );
      },
    );
  }

  void onCardTap(BuildContext context, CoffeeRecipe coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(coffeeRecipe: coffee),
      ),
    );
  }
}
