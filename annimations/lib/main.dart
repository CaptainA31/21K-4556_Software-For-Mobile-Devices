import 'dart:math';

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
      ),
      home: const MyHomePage(),
    );
  }
}

class SineCurve extends Curve {
  final double count;
  SineCurve({this.count = 1});

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool _bigger = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Container(
        //   width: _bigger ? 500 : 800,
        //   child: Image.asset("images/wallpaperflare.jpg"),
        // ),
        //now we can convert this to annimation
        AnimatedContainer(
          decoration: BoxDecoration(
            gradient: RadialGradient( //The container has a Radial Gradient background from purple to red.
              colors: [ const Color.fromARGB(255, 1, 88, 110),  const Color.fromARGB(255, 255, 255, 255)],
              stops: [_bigger ? 0.1 : 0.8, 1],
            ),
          ),
          width: _bigger ? 100 : 500,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnixOANZkzqBvx11kY0RUPxmRlhOfSwdebNA&s"),
          duration: Duration(seconds: 5),
          // curve: Curves.easeInOutQuint, //curves change the animations timings  https://api.flutter.dev/flutter/animation/Curves-class.html   we can even make custom curves
          curve: SineCurve(count: 10),
        ),
        ElevatedButton(
          onPressed: () => setState(() {
            _bigger = !_bigger;
          }), child: Icon(Icons.star)),
      ],
    );
  }
}