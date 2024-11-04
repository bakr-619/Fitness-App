import 'package:flutter/material.dart';
import 'explore_page.dart';
import 'workout_page.dart'; // Import WorkoutPage here

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Adjusted Greeting
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good morning 🔥",
                        style: TextStyle(fontSize: 20, color: Colors.black54)),
                    SizedBox(height: 4),
                    Text(
                      "Abu-Bakkar",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Search Box
              Center(
                child: Container(
                  width: 350,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "🔎 Search",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Popular View
              Text(
                "Popular View",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _popularVideoCard(
                        "Lower Body Training", "500 kcal", "50 min", context),
                    _popularVideoCard(
                        "Hand Workout", "400 kcal", "45 min", context),
                    _popularVideoCard(
                        "Leg Workout", "300 kcal", "40 min", context),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Today's Plan
              Text(
                "Today's Plan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  _todayPlanCard(
                      "Push Ups", "100 push ups daily", 45, "Intermediate"),
                  _todayPlanCard("Squats", "80 squats daily", 60, "Advanced"),
                  _todayPlanCard("Planks", "5 min hold", 30, "Beginner"),
                ],
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      // Custom Bottom Navigation Bar
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _popularVideoCard(
      String title, String calories, String duration, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 280,
        height: 174,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(23)),
          image: DecorationImage(
            image: AssetImage(
                '/Users/abubakkar/fitness_app/lib/images/5.jpg'), // Replace with actual image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Bold white text overlay, positioned top-left and above the small info boxes
            Positioned(
              top: 12,
              left: 12,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Bottom small info boxes
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: [
                  _smallInfoBox(calories, Icons.local_fire_department),
                  SizedBox(width: 8),
                  _smallInfoBox(duration, Icons.timer),
                ],
              ),
            ),
            // Play button icon in the bottom-right
            Positioned(
              top: 20,
              bottom: 20,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkoutPage()),
                  );
                },
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.green.shade600,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _todayPlanCard(
      String title, String subtitle, int percentage, String level) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(23)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                          '/Users/abubakkar/fitness_app/lib/images/big2_PushUps.jpg'), // Replace with actual image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(subtitle, style: TextStyle(color: Colors.black54)),
                    SizedBox(height: 8),
                    Container(
                      width: 180, // Adjusted width
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Stack(
                        children: [
                          FractionallySizedBox(
                            widthFactor: percentage / 100,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  "$percentage%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  level,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _smallInfoBox(String text, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6), // Faded effect
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.black.withOpacity(0.6)),
          SizedBox(width: 4),
          Text(text, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  Widget _bottomNavItem(
      IconData icon, String label, bool isSelected, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == "Explore") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ExplorePage()));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.black, size: 24),
            )
          else
            Icon(icon, color: Colors.white, size: 28),
          if (isSelected)
            Text(label, style: TextStyle(color: Colors.green, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      width: 360,
      height: 74,
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomNavItem(Icons.home, "Home", true, context),
          _bottomNavItem(Icons.rocket_rounded, "Explore", false, context),
          _bottomNavItem(Icons.bar_chart_rounded, "Growth", false, context),
          _bottomNavItem(Icons.person, "Profile", false, context),
        ],
      ),
    );
  }
}
