import 'package:flutter/material.dart';

import 'Start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:[Color.fromRGBO(58, 169, 243, 1),Color.fromRGBO(168, 243, 121, 1)],
          begin: Alignment.topLeft,
           ),
        ),
        child: const StartScreen()),
    ),
  );
  }
}