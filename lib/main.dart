import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/theme.dart';
import 'package:divyam_portfolio/screens/home_screen.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divyam Divesh - Portfolio',
      theme: appTheme(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}