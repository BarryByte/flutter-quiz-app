import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Learn Flutter the fun way",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 30.0,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
