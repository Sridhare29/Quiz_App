import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child:Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20,bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("images/quiz-logo.png",width: 300,),
          const SizedBox(height: 50,),
          const Text("Flutter",style:TextStyle(fontSize: 50.0,fontWeight: FontWeight.w600,color: Colors.white),),
          const SizedBox(height: 50,),
          OutlinedButton.icon(onPressed: (){},style: OutlinedButton.styleFrom(foregroundColor: Colors.white),label: const Text("Start Quiz!"),icon: const Icon(Icons.arrow_right_alt),),
        ],
      ),
    ));
  }
}