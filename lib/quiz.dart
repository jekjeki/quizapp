

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

class QuizPage extends StatelessWidget{
  const QuizPage({super.key});

  @override
  Widget build(context){
    return const QuizPageState();
  }
}


class QuizPageState extends StatefulWidget{
  const QuizPageState({super.key});

  @override
  State<QuizPageState> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPageState>{

  var currentIndex = 0;
  final List<String> selectedAnswers = [];

  void updateQuestion(String answer){
    selectedAnswers.add(answer);

    if(currentIndex != questions.length-1){
      setState(() {
        currentIndex++;
      });
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultScreen()));
    }
  }

  @override
  Widget build(context){
  var currentQuestion = questions[currentIndex];
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(currentQuestion.text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((ans){
             return AnswerButton(ans, () {
               updateQuestion(ans);
             });
            })
          ],
        )
      ),
    );
  }
}

