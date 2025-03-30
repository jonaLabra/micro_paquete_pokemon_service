import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_package_service/pokemon_package_service.dart';

void main() {
  test('adds one to input values', () async {
    final api = PokemonApiClient();
    final pikachu = await api.fetchPokemonData();
    print(pikachu.length);
  });
}
