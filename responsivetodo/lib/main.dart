import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ToDoHomePage(),
    );
  }
}

class ToDoHomePage extends StatefulWidget {
  const ToDoHomePage({super.key});

  @override
  State<ToDoHomePage> createState() => _ToDoHomePageState();
}

class _ToDoHomePageState extends State<ToDoHomePage> {
  final bool1 = false;
  final bool2 = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        ),
        body: Column(
          children: [
            CustomListItem(isDone: false, todoText: "Some text",),
            ElevatedButton(onPressed: (){}, child: Text("Press me")),
            
            ListTile(
              title: Text("This is my todo list"),
              trailing: Checkbox(value: bool1, onChanged: (obj) {}),
            ),
            ListTile(
              title: Text("This is my todo list"),
              trailing: Checkbox(value: true, onChanged: (obj) {}),
            ),
          ],
        ),
        );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
    required this.todoText, 
    required this.isDone,
  });

  final bool isDone;
  final String todoText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
            title: Text("This is my todo list"),
      trailing: Checkbox(value: isDone, onChanged: (obj) {}),
    );
  }
}

class CustomListItem extends StatefulWidget {
  const CustomListItem({super.key});

  @override
  State<CustomListItem> createState() => _CustomListItemState();
}

class _CustomListItemState extends State<CustomListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}