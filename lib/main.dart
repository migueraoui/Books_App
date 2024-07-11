import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/Screens/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mentorship Assignment 01',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade200),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
