class CoffeeRecipe {
  final String name;
  final String type;
  final String imageUrl;
  final String time;
  final String serves;
  final String difficulty;
  final String description;

  const CoffeeRecipe({
    required this.name,
    required this.type,
    required this.imageUrl,
    required this.time,
    required this.serves,
    required this.difficulty,
    required this.description,
  });

  static CoffeeRecipe fromJson(json) => CoffeeRecipe(
        name: json['name'],
        type: json['type'],
        imageUrl: json['imageUrl'],
        time: json['time'],
        serves: json['serves'],
        difficulty: json['difficulty'],
        description: json['description'],
      );
}
