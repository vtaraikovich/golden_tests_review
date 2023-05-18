import 'package:flutter/material.dart';

import '../../../common/common.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
        style: TextStyle(
          color: ColorName.primary,
          fontSize: 18,
          fontFamily: FontFamily.poppinsSemiBold,
        ),
      ),
    );
  }
}
