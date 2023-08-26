import 'package:flutter/material.dart';
import 'package:quiz_app/screens/flash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:[Color.fromRGBO(58, 169, 243, 1),Color.fromRGBO(168, 243, 121, 1)],
          begin: Alignment.topLeft,
           ),
        ),
        child: const FlashScreen()),
    ),
  ));
}
