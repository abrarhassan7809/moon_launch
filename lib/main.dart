import 'package:flutter/material.dart';
import 'package:moon_launch/views/activity_screen.dart';
import 'package:moon_launch/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark()
      ),

      home: ActivityScreen(),
    );
  }
}

