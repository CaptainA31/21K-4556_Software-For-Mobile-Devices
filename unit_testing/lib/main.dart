import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 121, 41, 41)),
        useMaterial3: true,
      ),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  List<Map<String, dynamic>> todo = [
    {'task': 'SLEEPING', 'isChecked': false},
    {'task': 'CODING', 'isChecked': false},
    {'task': 'EATING', 'isChecked': false},
    {'task': 'EXERCISE', 'isChecked': false},
  ];
  void _onCheckboxChanged(int index, bool? value) {
    setState(() {
      todo[index]['isChecked'] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To Do List')),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todo[index]['task']),
            trailing: Checkbox(
              value: todo[index]['isChecked'],
              onChanged: (bool? value) {
                _onCheckboxChanged(index, value);
              },
            ),
            onTap: () {
              // You can add any action on tapping a list item
            },
          );
        },
      ),
    );
  }
}