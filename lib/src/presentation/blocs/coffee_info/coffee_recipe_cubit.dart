import 'package:coffee_recipes_module/coffee_recipes_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'coffee_recipe_state.dart';

@injectable
class CoffeeRecipeCubit extends Cubit<CoffeeRecipeState> {
  final CoffeeRecipeRepository _coffeeRecipeRepository;

  CoffeeRecipeCubit(this._coffeeRecipeRepository)
      : super(const CoffeeRecipeInitial([]));

  void updateCoffeesInfo() {
    final coffeeRecipes = _coffeeRecipeRepository.getCoffeeRecipes();

    emit(CoffeeRecipeUpdate(coffeeRecipes));
  }
}
