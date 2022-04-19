import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';

class Routes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'details': (BuildContext context) => const DetailsScreen(),
  };
}
