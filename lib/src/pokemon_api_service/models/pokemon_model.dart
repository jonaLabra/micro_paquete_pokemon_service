class Pokemon {
  final String name;
  final String url;
  final int id;

  Pokemon({required this.name, required this.url, required this.id});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      id: int.parse(Uri.parse(json['url']).pathSegments.lastWhere((segment) => segment.isNotEmpty)),
      url:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${Uri.parse(json['url']).pathSegments.lastWhere((segment) => segment.isNotEmpty)}.png',
    );
  }
}
