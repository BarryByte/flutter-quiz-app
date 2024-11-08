import 'package:flutter/material.dart';
import 'package:quiz_app/pages/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  // activeScreen = FirstPage(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(137, 165, 82, 82), Colors.purple],
              // colors : [Colors.blue, Colors.yellow, Colors.pink, Colors.green],
            ),
          ),
          // child: activeScreen,
          child : activeScreen == 'start-screen' ? FirstScreen(switchScreen) : QuestionsScreen(),
        ),
      ),
    );
  }
}
