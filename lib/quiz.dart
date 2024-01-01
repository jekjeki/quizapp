

import 'package:flutter/material.dart';

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

  @override
  Widget build(context){
    return const Text("QuestionScreen");
  }
}

