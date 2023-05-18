import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/common.dart';
import '../../config/config.dart';
import '../presentation.dart';

class HomeScreen extends StatefulWidget {
  final CoffeeRecipeCubit? cubit;

  const HomeScreen({
    super.key,
    @visibleForTesting this.cubit,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cubit = getIt<CoffeeRecipeCubit>();

  List<CoffeeRecipe> coffeeRecipes = [];

  @override
  void initState() {
    super.initState();

    updateCoffeeRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        backgroundColor: ColorName.creamN2,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Coffee Recipes',
          style: TextStyle(color: ColorName.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(StyleConstants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<CoffeeRecipeCubit, CoffeeRecipeState>(
                bloc: cubit,
                builder: (context, state) {
                  if (state is CoffeeRecipeLoading) {
                    return const LoadingWidget();
                  } else if (state is CoffeeRecipeFailure) {
                    return const FailureWidget();
                  } else if (state is CoffeeRecipeLoaded) {
                    coffeeRecipes = state.coffeeRecipes;

                    return CoffeeRecipesListview(coffeeRecipes: coffeeRecipes);
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateCoffeeRecipes() {
    Future.delayed(
      Duration.zero,
      () async => cubit.updateCoffeeRecipes(),
    );
  }

  @override
  void dispose() {
    cubit.close();

    super.dispose();
  }
}
