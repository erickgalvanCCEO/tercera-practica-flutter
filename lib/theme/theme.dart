import 'package:flutter/material.dart';

class AppTheme {
  static const Color mainColor = Color.fromARGB(223, 25, 37, 176);
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: mainColor,
    appBarTheme: const AppBarTheme(
        color: mainColor,
        titleTextStyle: TextStyle(fontFamily: 'arial', fontSize: 30),
        centerTitle: true,
        toolbarHeight: 75),
    scaffoldBackgroundColor: Colors.black,
  );
}
