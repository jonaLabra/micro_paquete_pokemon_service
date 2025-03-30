import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:pokemon_package_service/pokemon_package_service.dart';

import 'errors/failures.dart';
import 'models/pokemon_model.dart';

class PokemonApiClient {
  static const String _baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  final http.Client httpClient;

  PokemonApiClient({http.Client? httpClient}) : httpClient = httpClient ?? http.Client();

  //FETCH DATA FROM API
  Future<Either<Failure, List<Pokemon>>> fetchPokemonData({int offset = 0, int limit = 20}) async {
    final response = await httpClient.get(Uri.parse('$_baseUrl?offset=$offset&limit=$limit'));
    if (response.statusCode == 200) {
      List results = jsonDecode(response.body)['results'];
      return Right(results.map((json) => Pokemon.fromJson(json)).toList());
    } else {
      return Left(ServerFailure('Error fetching Pokémon'));
    }
  }
}
