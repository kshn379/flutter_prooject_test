import 'package:flutter/material.dart';

final customTheme = ThemeData(
  // 앱바 색상과 비슷한 색상으로 FAB 색상 설정
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30)),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.yellow,
  ),
);
