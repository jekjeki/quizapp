import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key});

  @override
  Widget build(context){
    return ResultScreenState();
  }

}

class ResultScreenState extends StatefulWidget{
  ResultScreenState({super.key});
  
  State<ResultScreenState> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreenState>{

  @override
  Widget build(context){
    return const Scaffold(
      body: Text('Finished answers all question'),
    );
  }
}

