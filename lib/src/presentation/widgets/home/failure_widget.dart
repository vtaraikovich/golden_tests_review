import 'package:flutter/material.dart';

import '../../../common/common.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.warning.image(
            color: ColorName.primary,
            height: 150,
            width: 150,
          ),
          const SizedBox(height: StyleConstants.defaultPadding),
          const Text(
            'Something went wrong',
            style: TextStyle(
              color: ColorName.primary,
              fontSize: 18,
              fontFamily: FontFamily.poppinsSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
