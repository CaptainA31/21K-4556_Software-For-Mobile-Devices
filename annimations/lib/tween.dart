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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Image starsBackground;
  double _sliderValue = 0;
  Color? _newColor = Colors.white;

  @override
  void initState() {
    super.initState();
    // Preload the image to avoid flickering
    starsBackground = Image.network(
      'https://images.unsplash.com/photo-1520034475321-cbe63696469a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHN0YXIlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D',
      fit: BoxFit.cover,
    );
  }

  //-Tweens are mutable, so if you know that you're going to animate between the same set of values its best to declare your tween as a static final variable in your class, that way you dont create a new object every time you rebuild
  // static final colorTween = ColorTween(begin: Colors.white, end: Colors.purple);


  @override
  Widget build(BuildContext context) {
        //For normal
        // Center(
        //   child: ColorFiltered(child: Image.asset("images/sun.png"),
        //   colorFilter: ColorFilter.mode(Colors.orange, BlendMode.modulate),
        //   ),
        // )

        //with animation
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(child: starsBackground),

          // Add SafeArea to prevent UI elements from overlapping system UI
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder<Color?>(
                  //even if the color changes the star widget itself stays the same only the color changes  here before the image widget gets reconstructred everytime the builder method gets called
                  child: Image.asset("images/sun.png"),
                  tween: ColorTween(begin: Colors.white, end: _newColor),
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceInOut,
                  onEnd: () {
                    setState(() {
                      _newColor = _newColor == Colors.purple ? Colors.white : Colors.purple;
                    });
                  },
                  builder: (_, Color? color, Widget? myChild) {
                    return ColorFiltered( 
                      // child: Image.asset("images/sun.png"),
                      child: myChild,
                      colorFilter: ColorFilter.mode(color ?? Colors.white, BlendMode.modulate),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Slider.adaptive(
                    value: _sliderValue,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                        _newColor = Color.lerp(Colors.white, Colors.red, _sliderValue);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}