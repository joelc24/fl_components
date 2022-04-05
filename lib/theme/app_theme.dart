

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color Primario
        primaryColor: Colors.indigo,

        //AppbarTheme
        appBarTheme: const AppBarTheme(
          color: primary,
        ),

        //TextButtonTheme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary),
        ),  

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
        ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color Primario
        primaryColor: Colors.indigo,

        //AppbarTheme
        appBarTheme: const AppBarTheme(
          color: primary,
        ),

        scaffoldBackgroundColor: Colors.black,
  );

  
 
}