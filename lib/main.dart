import 'package:flutter/material.dart';
import 'package:golden_tests_review/src/common/common.dart';

import 'generated/l10n.dart';
import 'src/config/di/di.dart';
import 'src/presentation/presentation.dart';

void main() {
  configureAppDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          secondary: ColorName.creamN1,
        ),
      ),
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [S.delegate],
      home: const HomeScreen(),
    );
  }
}
