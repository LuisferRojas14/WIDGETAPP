import 'package:flutter/material.dart';
import 'package:widgetsapp/config/theme/theme_app.dart';
import 'package:widgetsapp/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgetsapp/presentation/screens/cards/cards_screen.dart';
import 'package:widgetsapp/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonScreen(),
        '/cards': (context) => const CardsScreen(),
      },
      
    );
  }
}
