import 'package:flutter/material.dart';

final customTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30)
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.redAccent,
    )
);
