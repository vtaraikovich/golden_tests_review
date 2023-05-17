import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_tests_review/src/common/common.dart';
import 'package:golden_tests_review/src/config/di/di.dart';
import 'package:golden_tests_review/src/presentation/blocs/blocs.dart';
import 'package:golden_tests_review/src/presentation/presentation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cubit = getIt<CoffeeRecipeCubit>();

  @override
  void initState() {
    super.initState();

    cubit.updateCoffeesInfo();
  }

  @override
  Widget build(BuildContext context) {
    final intl = context.intl;

    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        backgroundColor: ColorName.creamN2,
        centerTitle: true,
        elevation: 0,
        title: Text(
          intl.coffeeRecipes,
          style: const TextStyle(color: ColorName.primary),
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
                  final coffeeRecipes = state.coffees;

                  return ListView.builder(
                    itemCount: coffeeRecipes.length,
                    itemBuilder: (_, i) {
                      final coffeeRecipe = coffeeRecipes[i];

                      return CoffeeCard(
                        title: coffeeRecipe.type.toUpperCase(),
                        subtitle: coffeeRecipe.name,
                        iconUrl: coffeeRecipe.imageUrl,
                        time: coffeeRecipe.time,
                        onTap: () => onCardTap(context, coffeeRecipe),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onCardTap(BuildContext context, CoffeeRecipe coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(coffee: coffee),
      ),
    );
  }
}
