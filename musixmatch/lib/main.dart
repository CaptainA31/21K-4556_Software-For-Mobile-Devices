import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlaylistScreen(),
    );
  }
}

class PlaylistScreen extends StatelessWidget {
  final List<Map<String, String>> songs = [
    {"title": "Aansu - Auj", "artist": "Auj"},
    {"title": "Raat - Auj", "artist": "Auj"},
    {"title": "Angraiziyan & Laung Gawacha", "artist": "Auj"},
    {"title": "Keh Dena - Auj", "artist": "Auj"},
    {"title": "O Jaana", "artist": "Auj"},
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        bool isTablet = screenWidth > 600; // Tablet detection
        bool isPortrait = screenHeight > screenWidth; // Portrait mode detection

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Playlist Header
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://gratisography.com/wp-content/uploads/2025/01/gratisography-dog-vacation-800x525.jpg',
                        width: isTablet ? 120 : screenWidth * 0.2,
                        height: isTablet ? 120 : screenWidth * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PLAYLIST - 6 SONGS",
                          style: TextStyle(color: Colors.grey, fontSize: isTablet ? 16 : screenWidth * 0.03),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Auj",
                          style: TextStyle(fontSize: isTablet ? 28 : screenWidth * 0.06, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.02),

                // Shuffle Play Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsets.symmetric(vertical: isTablet ? 16 : screenHeight * 0.015),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Shuffle Play",
                      style: TextStyle(color: Colors.black, fontSize: isTablet ? 18 : screenWidth * 0.04),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.02),

                // Song List
                Expanded(
                  child: ListView.builder(
                    itemCount: songs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.drag_handle, color: Colors.grey, size: isTablet ? 28 : screenWidth * 0.05),
                        title: Text(
                          songs[index]["title"]!,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: isTablet ? 20 : screenWidth * 0.045),
                        ),
                        subtitle: Text(
                          songs[index]["artist"]!,
                          style: TextStyle(fontSize: isTablet ? 16 : screenWidth * 0.035),
                        ),
                        trailing: Icon(Icons.more_vert, size: isTablet ? 28 : screenWidth * 0.05),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar with Music Player
          bottomNavigationBar: BottomAppBar(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
              height: isTablet ? 80 : screenHeight * 0.1,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://gratisography.com/wp-content/uploads/2025/01/gratisography-dog-vacation-800x525.jpg',
                      width: isTablet ? 60 : screenWidth * 0.12,
                      height: isTablet ? 60 : screenWidth * 0.12,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Jhalleya",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: isTablet ? 20 : screenWidth * 0.045),
                        ),
                        Text(
                          "Marjaan",
                          style: TextStyle(color: Colors.grey, fontSize: isTablet ? 16 : screenWidth * 0.035),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.play_arrow, size: isTablet ? 36 : screenWidth * 0.07),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
