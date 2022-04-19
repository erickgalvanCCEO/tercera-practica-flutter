import 'package:flutter/material.dart';
import 'package:peliculas/routes/routes.dart';
import 'package:peliculas/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas App',
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
      theme: AppTheme.darkTheme,
    );
  }
}
