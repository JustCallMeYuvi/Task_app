import 'package:flutter/material.dart';
import 'package:task_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
