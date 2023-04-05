import 'package:flutter/material.dart';

class ThemeApp {
  final light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: const Color.fromARGB(255, 34, 125, 209),
    fontFamily: 'OpenSans',
    
    //primarySwatch: Colors.blue,
    backgroundColor: const Color.fromARGB(255, 34, 125, 209),
    brightness: Brightness.light,
    textTheme: const TextTheme(),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green,)
        .copyWith(secondary: const Color.fromARGB(255, 34, 125, 209)),
  );
}
