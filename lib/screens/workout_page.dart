import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 33, 38),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Workout", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // Large Image Box
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/images/islam-makhachev-boxing.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Floating Information Box
                      Positioned(
                        bottom: -3,
                        left: 20,
                        right: 20,
                        child: _floatingBox(),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  // Workout Title
                  Text(
                    "Lower Body Training",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Workout Description
                  Text(
                    "The body grows by focusing on each part. Let's start with lower body training to strengthen and tone your muscles effectively.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Round Info and Count
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Round",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "1 / 8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Vertical Slider
                  Column(
                    children: [
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/mikeei.jpg',
                        title: "Boxing",
                        duration: "00:30",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/khamzat-chimaev-ufc279cw-750.jpg',
                        title: "Wrestling",
                        duration: "00:50",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/kakaaaa.jpg.webp',
                        title: "Swimming",
                        duration: "01:00",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/cr58.jpg',
                        title: "Jumping Jacks",
                        duration: "00:45",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/kjhaboib.jpg.webp',
                        title: "Squats",
                        duration: "01:15",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/kjhaboib.jpg.webp',
                        title: "Lunges",
                        duration: "00:40",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/kjhaboib.jpg.webp',
                        title: "Push Ups",
                        duration: "00:35",
                      ),
                      _workoutCard(
                        imagePath:
                            '/Users/abubakkar/fitness_app/lib/images/kjhaboib.jpg.webp',
                        title: "Plank",
                        duration: "01:30",
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          // Let's Workout Button
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 187, 242, 70),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Let's Workout",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Floating Info Box Widget
  Widget _floatingBox() {
    return ClipRect(
      child: Container(
        width: 258,
        height: 64,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 25, 33, 38),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _infoBoxItem(
              icon: Icons.access_time,
              label: "Time",
              value: "20 min",
            ),
            Container(width: 1, color: Colors.white),
            _infoBoxItem(
              icon: Icons.local_fire_department,
              label: "Burn",
              value: "95 kcal",
            ),
          ],
        ),
      ),
    );
  }

  // Workout Info Box Item
  Widget _infoBoxItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 187, 242, 70),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.black, size: 16),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Color.fromARGB(255, 187, 242, 70),
                fontSize: 14,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Workout Card Widget
  Widget _workoutCard({
    required String imagePath,
    required String title,
    required String duration,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: 74,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 56, 64, 70),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                color: Color.fromARGB(255, 187, 242, 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
