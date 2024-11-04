import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import HomeScreen to navigate to it

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Background image with fade effect
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          '/Users/abubakkar/fitness_app/lib/images/sporty-guy-stands-studio-against-dark-space-hood-sports-beauty_180601-3825.jpg.avif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
                // Centered text
                Padding(
                  padding: const EdgeInsets.only(bottom: 120.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "When you get tired call me",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Your partner in fitness",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 'Get Started' button
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
