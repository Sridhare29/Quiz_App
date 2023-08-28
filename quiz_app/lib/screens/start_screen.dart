import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(opacity: 0.6,child: Image.asset("images/quiz-logo.png",width: 300,)),
          //or
          Image.asset(
            "images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Flutter",
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Color.fromARGB(255, 10, 233, 18),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
            label: const Text("Start Quiz!"),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    ));
  }
}
