import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';

class DetailsScreen extends StatelessWidget {
  final CoffeeRecipe coffee;

  const DetailsScreen({
    required this.coffee,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final intl = context.intl;
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.65;
    final width = size.width;
    const divider = Divider(color: ColorName.creamN1, thickness: 2);
    const borderRadius = StyleConstants.largeRadius;

    return Scaffold(
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              coffee.imageUrl,
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
              child: Container(
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
                      coffee.name.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: ColorName.primary,
                        fontSize: 24,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    divider,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: StyleConstants.smallPadding,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ShortInfo(
                            title: coffee.time,
                            icon: Assets.icons.clock,
                          ),
                          _ShortInfo(
                            title: coffee.serves,
                            icon: Assets.icons.coffee,
                          ),
                          _ShortInfo(
                            title: coffee.difficulty,
                            icon: Assets.icons.fire,
                          ),
                        ],
                      ),
                    ),
                    divider,
                    Text(
                      intl.instructions,
                      style: const TextStyle(
                        color: ColorName.creamN1,
                        fontSize: 18,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    const SizedBox(height: StyleConstants.smallPadding),
                    Text(
                      coffee.description,
                      style: const TextStyle(
                        color: ColorName.primary,
                        fontSize: 14,
                        fontFamily: FontFamily.poppinsRegular,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShortInfo extends StatelessWidget {
  final String title;
  final SvgGenImage icon;

  const _ShortInfo({
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
