import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/quiz-logo.png', width: 200, height: 220, color: const Color.fromARGB(109, 251, 250, 250),),
          const SizedBox(height: 50,),
          const Text("Learn flutter in fun way !", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
          const SizedBox(height: 50,), 
          OutlinedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizPage()));
          }, 
          child: const Text("start", style: TextStyle(
            color: Colors.white
          ),), 
          style: OutlinedButton.styleFrom(backgroundColor: Colors.purple, shadowColor: Colors.black),
          )
        ],
      ),
      )
    );
  }
}


