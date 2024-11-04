import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),

              // top page Image
              Stack(
                children: [
                  Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                            'lib/images/main2-ali40.jpg'), // Replace with actual image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Text(
                      "Quarantine Best workout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.6),
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See more",
                        style: TextStyle(
                          color: Colors.green.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Section Title: Best for You
              Text(
                "Best for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // 1st Card Slider  (Best for You)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _exploreCard(
                      "lib/images/akhiali.jpg",
                      "Belly Fat Burner",
                      ["Lose fat", "Home workout"],
                    ),
                    _exploreCard(
                      "lib/images/akhiali.jpg",
                      "Leg Muscle Toning",
                      ["Strength", "Equipment"],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // 2nd Card Slider for "Best for You"
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _exploreCard(
                      "lib/images/akhiali.jpg",
                      "Arm Toning",
                      ["Strength", "Gym"],
                    ),
                    _exploreCard(
                      "lib/images/akhiali.jpg",
                      "Core Strength",
                      ["Endurance", "Fitness"],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Section Title: Challenge
              Text(
                "Challenge",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // Challenge Slider
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _challengeCard(
                      color: Colors.green.shade300,
                      icon: Icons.local_fire_department,
                      label: "Burn\nCalories",
                    ),
                    _challengeCard(
                      color: Colors.black54,
                      icon: Icons.directions_run,
                      label: "Sprint\nRunning",
                    ),
                    _challengeCard(
                      color: Colors.grey.shade200,
                      icon: Icons.local_drink,
                      label: "Protein\nIntake",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Section Title: Fast Warmup
              Text(
                "Fast Warmup",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // Card Slider (Fast Warmup)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _exploreCard(
                        "/Users/abubakkar/fitness_app/lib/images/chagdi.jpg",
                        "Stretching Routines",
                        ["Flexibility", "Beginner"]),
                    _exploreCard(
                        "/Users/abubakkar/fitness_app/lib/images/chagdi.jpg",
                        "Jumping Jacks",
                        ["Cardio", "No Equipment"]),
                    _exploreCard("lib/images/warmup.jpg", "Pre-Workout Warmup",
                        ["Full body", "All levels"]),
                  ],
                ),
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

  // Explore Widget
  Widget _exploreCard(String imagePath, String title, List<String> tags) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 220,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: tags
                        .map((tag) => Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                tag,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 12),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// Challenge Card Widget
  Widget _challengeCard({
    required Color color,
    required IconData icon,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 140,
        height: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -10,
              bottom: -10,
              child:
                  Icon(icon, size: 110, color: Colors.black.withOpacity(0.2)),
            ),
            Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _bottomNavItem(
      IconData icon, String label, bool isSelected, BuildContext context) {
    return GestureDetector(
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
          _bottomNavItem(Icons.home, "Home", false, context),
          _bottomNavItem(Icons.rocket_rounded, "Explore", true, context),
          _bottomNavItem(Icons.bar_chart, "Growth", false, context),
          _bottomNavItem(Icons.person, "Profile", false, context),
        ],
      ),
    );
  }
}
