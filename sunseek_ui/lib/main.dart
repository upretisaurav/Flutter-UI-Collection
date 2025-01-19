import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/screens/landing_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
