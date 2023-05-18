import 'package:alchemist/alchemist.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_tests_review/src/config/config.dart';
import 'package:golden_tests_review/src/presentation/presentation.dart';
import 'package:mocktail/mocktail.dart';

class MockCoffeeRecipesCubit extends MockCubit<CoffeeRecipeState>
    implements CoffeeRecipeCubit {}

void main() {
  configureAppDependencies();

  group('Coffee recipe card golden tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'coffee_recipe_card',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 320),
            name: 'Small device (320px)',
            child: CoffeeRecipeCard(
              title: 'COFFEE TYPE',
              subtitle: 'Coffee name',
              imagePath: 'assets/images/cappuccino.jpg',
              time: '2-3 mins',
              onTap: () {},
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 375),
            name: 'Medium device (375px)',
            child: CoffeeRecipeCard(
              title: 'COFFEE TYPE',
              subtitle: 'Coffee name',
              imagePath: 'assets/images/cappuccino.jpg',
              time: '2-3 mins',
              onTap: () {},
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 430),
            name: 'Large device (430px)',
            child: CoffeeRecipeCard(
              title: 'COFFEE TYPE',
              subtitle: 'Coffee name',
              imagePath: 'assets/images/cappuccino.jpg',
              time: '2-3 mins',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  });

  group('Sub info widget golden tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'sub_info_widget',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 320),
            name: 'Small device (320px)',
            child: const SubInfoWidget(
              coffeeRecipe: CoffeeRecipe(
                name: 'Name',
                type: 'Type',
                imagePath: 'assets/images/cappuccino.jpg',
                time: '2-3 mins',
                serves: 'Serves 1',
                difficulty: 'Easy',
                description: 'Description',
              ),
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 430),
            name: 'Large device (430px)',
            child: const SubInfoWidget(
              coffeeRecipe: CoffeeRecipe(
                name: 'Name',
                type: 'Type',
                imagePath: 'assets/images/cappuccino.jpg',
                time: '00:00',
                serves: 'Serves 1',
                difficulty: 'Easy',
                description: 'Description',
              ),
            ),
          ),
        ],
      ),
    );
  });

  group('Coffee recipe details golden tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'coffee_recipe_details',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 320),
            name: 'Small device (320px)',
            child: const CoffeeRecipeDetails(
              coffeeRecipe: CoffeeRecipe(
                name: 'Name',
                type: 'Type',
                imagePath: 'assets/images/cappuccino.jpg',
                time: '00:00',
                serves: 'Serves 1',
                difficulty: 'Easy',
                description: 'Description',
              ),
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(maxWidth: 430),
            name: 'Large device (430px)',
            child: const CoffeeRecipeDetails(
              coffeeRecipe: CoffeeRecipe(
                name: 'Name',
                type: 'Type',
                imagePath: 'assets/images/cappuccino.jpg',
                time: '00:00',
                serves: 'Serves 1',
                difficulty: 'Easy',
                description: 'Description',
              ),
            ),
          ),
        ],
      ),
    );
  });

  // group('Home screen golden tests', () {
  //   goldenTest(
  //     'renders correctly',
  //     fileName: 'home_screen',
  //     builder: () => GoldenTestGroup(
  //       children: [
  //         GoldenTestScenario(
  //           constraints: const BoxConstraints(maxWidth: 430),
  //           name: 'Loading',
  //           child: Builder(
  //             builder: (context) {
  //               final mockCubit = MockCoffeeRecipesCubit();
  //               when(() => mockCubit.updateCoffeeRecipes())
  //                   .thenAnswer((_) async {});

  //               whenListen(
  //                 mockCubit,
  //                 Stream.fromIterable(
  //                   const [
  //                     CoffeeRecipeInitial(),
  //                     CoffeeRecipeLoading(),
  //                   ],
  //                 ),
  //                 initialState: const CoffeeRecipeInitial(),
  //               );

  //               return HomeScreen(cubit: mockCubit);
  //             },
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // });
}
