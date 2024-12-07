import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String randomImage;

  final List<String> images = [
    'assets/Flashscreen/1.png',
    'assets/Flashscreen/7.png',
    'assets/Flashscreen/8.png',
    'assets/Flashscreen/9.png',
    'assets/Flashscreen/10.png',
    'assets/Flashscreen/11.png'
  ];

  @override
  void initState() {
    super.initState();
    randomImage = images[Random().nextInt(images.length)];
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage(title: 'EYEDRA HOME PAGE',)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(randomImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
