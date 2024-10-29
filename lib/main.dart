import 'package:flutter/material.dart';
import 'package:quiz_app/pages/landingPage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [Color.fromARGB(137, 165, 82, 82), Colors.purple],
              // colors : [Colors.blue, Colors.yellow, Colors.pink, Colors.green],
            ),
          ),
          child: FirstPage(),
        ),
      ),
    ),
  );
}
