import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@lazySingleton
class CoffeeRecipeRemoteDataSource {
  Future<List<CoffeeRecipe>> getCoffeeRecipes() async {
    final response = [
      {
        "name": "Cappuccino",
        "type": "Cappuccino",
        "imagePath": "assets/images/cappuccino.jpg",
        "time": "2-3 mins",
        "serves": "Serves 1",
        "difficulty": "Easy",
        "description":
            "1. Make around 35ml espresso using a coffee machine and pour it into the base of your cup.\n\n2. Steam the milk with the steamer attachment so that it has around 4-6cm of foam on top. Hold the jug so that the spout is about 3-4cm above the cup and pour the milk in steadily. As the volume within the cup increases, bring the jug as close to the surface of the drink as possible whilst aiming to pour into the centre. Once the milk jug is almost touching the surface of the coffee, tilt the jug to speed up the rate of pour.As you accelerate, the milk will hit the back of the cup and start naturally folding in on itself to create a pattern on the top. Dust the surface with a little cocoa powder if you like.",
      },
      {
        "name": "Cold Coffee",
        "type": "Espresso",
        "imagePath": "assets/images/ice_coffee.jpg",
        "time": "2-5 mins",
        "serves": "Serves 2",
        "difficulty": "Easy",
        "description":
            "1. Take some espresso, crushed ice, condensed milk and 1 cup of regular milk.\n\n2. Throw them all in a blender.\n\n3. Blend it for a few minutes and served chilled.",
      },
      {
        "name": "Irish Coffee",
        "type": "Liquer",
        "imagePath": "assets/images/irish_coffee.jpg",
        "time": "40 mins",
        "serves": "Serves 1",
        "difficulty": "Easy",
        "description":
            "1. Fill a tall glass (traditionally with a stem) with hot boiling water, leave to stand and then pour away the water.\n\n2. Whip the cream until the bubbles disappear and it has just started to thicken and form ribbons underneath the whisk. Put back in the refrigerator.\n\n3. Dissolve the sugar in 2 tablespoons of hot water in a small pan and bring to a boil. Add some freshly brewed rich coffee and stir. Then remove from heat and stir in the whisky.\n\n4. Pour the mixture of whisky, sugar and coffee into the bottom of the pre-heated glass.\n\n5. Take the cold cream out of the fridge, whisk once again, then pour it on over the back of a spoon (to prevent it from sinking) until you hit the rim of the glass.",
      },
      {
        "name": "Mocha",
        "type": "Mocha",
        "imagePath": "assets/images/cappuccino.jpg",
        "time": "2-3 mins",
        "serves": "Serves 1",
        "difficulty": "Easy",
        "description":
            "1. Make around 35ml espresso using a coffee machine and pour into the base of your cup.Add the drinking chocolate and mix well until smooth.\n\n2. Steam the milk with the steamer attachment so that it has around 4-6cm of foam on top. Hold the jug so that the spout is about 3-4cm above the cup and pour the milk in steadily. As the volume within the cup increases, bring the jug as close to the surface of the drink as possible whilst aiming into the centre. Once the milk jug is almost touching the surface of the coffee, tilt to speed up the rate of pour. As you accelerate,the milk will hit the back of the cup and start naturally folding in on itself to create a pattern on the top.",
      },
      {
        "name": "Macchiato",
        "type": "Macchiato",
        "imagePath": "assets/images/macchiato.webp",
        "time": "2-3 mins",
        "serves": "Serves 1",
        "difficulty": "Easy",
        "description":
            "1. Make around 35ml espresso using your coffee machine and pour into the base of your cup.\n\n2. Steam the milk with the steamer attachment so that it has around 1-2cm of foam on top, then spoon 2-3 teaspoons of the foam on top of the espresso (discard the rest of the milk).",
      },
    ];

    final coffeeRecipes = await Future.delayed(
      const Duration(seconds: 2),
      () => response.map(CoffeeRecipe.fromJson).toList(),
    );

    return coffeeRecipes;
  }
}
