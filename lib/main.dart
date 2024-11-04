import 'package:fitness_app/screens/workout_page.dart';
import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/explore_page.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/explore': (context) => ExplorePage(),
        '/workout': (context) => WorkoutPage(),
      },
    );
  }
}
