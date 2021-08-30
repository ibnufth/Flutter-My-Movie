import 'dart:async';
import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '002b7d45e72b22dfbc981e54828015a3';

  Future<ItemModel> fetchMovieList() async {
    print('entered');
    final response = await client
        .get("https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
