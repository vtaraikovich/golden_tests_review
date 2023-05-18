import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';

import '../../../common/common.dart';

class SubInfoWidget extends StatelessWidget {
  final CoffeeRecipe coffeeRecipe;

  const SubInfoWidget({
    required this.coffeeRecipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: StyleConstants.smallPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _SubInfoItem(
            title: coffeeRecipe.time,
            icon: Assets.icons.clock,
          ),
          _SubInfoItem(
            title: coffeeRecipe.serves,
            icon: Assets.icons.coffee,
          ),
          _SubInfoItem(
            title: coffeeRecipe.difficulty,
            icon: Assets.icons.fire,
          ),
        ],
      ),
    );
  }
}

class _SubInfoItem extends StatelessWidget {
  final String title;
  final SvgGenImage icon;

  const _SubInfoItem({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const iconSize = 24.0;

    return Row(
      children: [
        icon.svg(
          color: ColorName.primary,
          height: iconSize,
          width: iconSize,
        ),
        const SizedBox(width: StyleConstants.smallPadding),
        Text(
          title,
          style: const TextStyle(
            color: ColorName.primary,
            fontSize: 14,
            fontFamily: FontFamily.poppinsMedium,
          ),
        )
      ],
    );
  }
}
