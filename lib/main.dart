import 'package:flutter/material.dart';
import 'package:sport_sharing_app/pages/home_page.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: _themeData(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _themeData() {
    ThemeData theme = ThemeData();

    return theme.copyWith(
        primaryColor: const Color(0xFF47F800),
        scaffoldBackgroundColor: const Color(0xFFEEF4EB),
        colorScheme:
            theme.colorScheme.copyWith(secondary: const Color(0xFFD8F3CC), ));
  }
}
