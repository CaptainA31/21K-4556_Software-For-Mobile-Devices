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
      title: 'Todo List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> todo = [
      "Fill the emoplyment form",
      "Make interview calls",
      "Fill feedback forms",
    ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    bool isDone = false;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text('Todo List'),),
      body: Column(
        children: todo.map((element) {
          return ListTile(
            title: Text(element),
            onTap: () {
              var snackbar = SnackBar(content: Text('item $element is done')); 
              ScaffoldMessenger.of(context).showSnackBar((snackbar));
            },
          );
        }
      ).toList(),
    ));
  }
}