import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../presentation.dart';

class DetailsScreen extends StatelessWidget {
  final CoffeeRecipe coffeeRecipe;

  const DetailsScreen({
    required this.coffeeRecipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              coffeeRecipe.imagePath,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: StyleConstants.largePadding,
                    top: StyleConstants.defaultPadding,
                  ),
                  child: Assets.icons.arrowBack.svg(width: 20, height: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CoffeeRecipeDetails(coffeeRecipe: coffeeRecipe),
            ),
          ],
        ),
      ),
    );
  }
}
