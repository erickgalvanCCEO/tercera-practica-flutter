import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/now_playing_responde.dart';

class MovieProvider extends ChangeNotifier {
  final String _apiKey = '279b03f6d372c8e062815c8fe52c81a8';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  MovieProvider() {
    print('Inicializa movies provider');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(
      _baseUrl,
      '3/movie/now_playing',
      {
        'api_key': _apiKey,
        'language': _language,
        'page': '1',
      },
    );
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print(nowPlayingResponse.results[0].title);
  }
}
