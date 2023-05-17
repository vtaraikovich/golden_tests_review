import 'package:flutter/material.dart';

import '../../common/common.dart';

class CoffeeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconUrl;
  final String time;
  final VoidCallback onTap;

  const CoffeeCard({
    required this.title,
    required this.subtitle,
    required this.iconUrl,
    required this.time,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(StyleConstants.defaultRadius),
          ),
          color: ColorName.white,
          child: Padding(
            padding: const EdgeInsets.all(StyleConstants.defaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(StyleConstants.smallPadding),
                  child: Image.network(
                    iconUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: StyleConstants.defaultPadding),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: ColorName.creamN1,
                          fontSize: 12,
                          fontFamily: FontFamily.poppinsSemiBold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: ColorName.primary,
                          fontSize: 16,
                          fontFamily: FontFamily.poppinsSemiBold,
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink()),
                      Row(
                        children: [
                          Assets.icons.clock.svg(height: 16),
                          const SizedBox(width: 4),
                          Text(
                            time,
                            style: const TextStyle(
                              color: ColorName.secondary,
                              fontSize: 12,
                              fontFamily: FontFamily.poppinsMedium,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Assets.icons.heart.svg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
