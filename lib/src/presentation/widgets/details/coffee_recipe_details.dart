import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../presentation.dart';

class CoffeeRecipeDetails extends StatelessWidget {
  final CoffeeRecipe coffeeRecipe;

  const CoffeeRecipeDetails({
    required this.coffeeRecipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final intl = context.intl;
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.65;
    final width = size.width;
    const divider = Divider(color: ColorName.creamN1, thickness: 2);
    const borderRadius = StyleConstants.largeRadius;

    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: StyleConstants.largePadding,
        vertical: StyleConstants.smallPadding,
      ),
      decoration: const BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: ListView(
        children: [
          Text(
            coffeeRecipe.name.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ColorName.primary,
              fontSize: 24,
              fontFamily: FontFamily.poppinsMedium,
            ),
          ),
          divider,
          SubInfoWidget(coffeeRecipe: coffeeRecipe),
          divider,
          const Text(
            "Instructions:",
            style: TextStyle(
              color: ColorName.creamN1,
              fontSize: 18,
              fontFamily: FontFamily.poppinsMedium,
            ),
          ),
          const SizedBox(height: StyleConstants.smallPadding),
          Text(
            coffeeRecipe.description,
            style: const TextStyle(
              color: ColorName.primary,
              fontSize: 14,
              fontFamily: FontFamily.poppinsRegular,
            ),
          )
        ],
      ),
    );
  }
}
