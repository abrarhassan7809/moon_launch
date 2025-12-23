import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moon_launch/tutorial_screen/guid_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GuidScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg_splash_screen.png',
            fit: BoxFit.cover,
          ),

          Center(
            child: ScaleTransition(
              scale: _animation,
              child: ClipRRect(
                child: Image.asset('assets/images/moon_launch_logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

