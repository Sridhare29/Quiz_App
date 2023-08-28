import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

import 'Start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var actionScreen = 'start-screen';

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   actionScreen =  StartScreen(SwitchScreen);
  //   super.initState();
  // }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        actionScreen = 'results-screen';
      });
    }
  }

  void SwitchScreen() {
    setState(() {
      actionScreen = 'question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(SwitchScreen);

    if (actionScreen == 'question-Screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if (actionScreen == 'results-screen') {
      screenWidget = ResultScreen();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(58, 169, 243, 1),
                Color.fromRGBO(168, 243, 121, 1)
              ],
              begin: Alignment.topLeft,
            ),
          ),
          child: actionScreen == 'start-screen'
              ? StartScreen(SwitchScreen) // Pass the switchScreen method to StartScreen
              : actionScreen == 'question-Screen'
                  ? QuestionScreen(onSelectAnswer: chooseAnswer)
                  : ResultScreen(),

        ),
      ),
    );
  }
}
