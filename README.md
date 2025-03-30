<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Features

This package is used to obtain data from the Pokemon API.

## Usage

to add package go to Pubspec.yaml in your project and add in dependencies segment this lines.

```yaml
pokemon_package_service:
    git:
      url: https://github.com/jonaLabra/micro_paquete_pokemon_service.git
```

And run this commando to add package in project.

```dart
flutter pub get
```

## Implement code

To get a list of object pokemon only add the package to the project and initialize PokemonApiClient, use the function fetchPokemonData and set two parameters Offset and limit (deafult value from parameters is offset = 0 and limit = 20).

```dart
PokemonApiClient _service = PokemonApiClient();
var resp = await _service.fetchPokemonData(offset: offset, limit: pageSize);
```


# micro_paquete_pokemon_service
