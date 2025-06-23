

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:welcome_page/auth/welcome_screen.dart';
//import 'package:auth/Homescreen.dart'; // Import your HomeScreen here

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.forward();
/*
    Timer(const Duration(seconds: 3), () {
      // Navigate to the HomeScreen after 3 seconds
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      ));
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 199, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: _animationController,
                  curve: Curves.easeOut,
                ),
              ),
              child: Image.asset('images/logo.png', height: 200),
            ),
            const SizedBox(
              height: 50,
            ),
            ScaleTransition(
              scale: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: _animationController,
                  curve: Curves.linear,
                ),
              ),
              child: const Text(
                'SHOPPING APP',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 235, 64, 13)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
        height: 40,
        child: Text(
          'Powered By CS students',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 235, 64, 13),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
