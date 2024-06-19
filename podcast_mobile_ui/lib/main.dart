import 'package:flutter/material.dart';
import 'package:podcast_mobile_ui/theme.dart';
import 'package:podcast_mobile_ui/widgets/custom_bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const CustomBottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
