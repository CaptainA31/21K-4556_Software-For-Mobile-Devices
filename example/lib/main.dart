import 'package:flutter/material.dart';
import 'package:user_profile_drawer/user_profile_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Profile Drawer Demo')),
        drawer: UserProfileDrawer(
          name: "Jawwad Malik",
          email: "jawwad@example.com",
          profileImageUrl: null, // Try with and without this
          drawerItems: const [
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
          ],
        ),
        body: const Center(child: Text("Swipe from the left!")),
      ),
    );
  }
}
