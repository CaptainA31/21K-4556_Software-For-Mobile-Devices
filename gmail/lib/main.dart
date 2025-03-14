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
      home: GmailUI(),
    );
  }
}

class GmailUI extends StatelessWidget {

  List<Email> emails = [
  Email("Google Maps Timeline", "Your January update", "6 Feb", "This Timeline email is an automated...", Icons.gps_fixed, Colors.orange),
  Email("itch.io", "New game released", "31 Jan", "Hey Metallic Fist Digital Limited...", Icons.gamepad, Colors.purple),
  Email("Google Play | Apps & Games", "Best apps from 2020", "26 Jan", "What's new on Android...", Icons.play_arrow, Colors.green),
  Email("Amazon Web Services", "Last 2 days | Register now", "19 Jan", "AWS Build 2021...", Icons.cloud, Colors.blue),
  Email("Google Account", "Privacy Checkup", "14 Jan", "See your personalized privacy update...", Icons.account_circle, Colors.red),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: Container(
    height: 40,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Search in emails",
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search, color: Colors.grey),
      ),
    ),
  ),
),

      body: ListView.builder(
  itemCount: emails.length,
  itemBuilder: (context, index) {
    final email = emails[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: email.iconColor,
        child: Icon(email.icon, color: Colors.white),
      ),
      title: Text(email.sender, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(email.subject),
      trailing: Text(email.time),
    );
  },
),
floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: Colors.red,
  child: Icon(Icons.edit, color: Colors.white),
),
bottomNavigationBar: BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Mail"),
    BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Meet"),
  ],
  selectedItemColor: Colors.red,
  unselectedItemColor: Colors.grey,
),

    );
  }
}

class Email {
  final String sender;
  final String subject;
  final String time;
  final String content;
  final IconData icon;
  final Color iconColor;

  Email(this.sender, this.subject, this.time, this.content, this.icon, this.iconColor);
}
