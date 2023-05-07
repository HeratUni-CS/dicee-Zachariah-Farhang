import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int firstDice = 1, secondDice = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: getRandomNumber,
                  child: Image.asset('images/dice$firstDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: getRandomNumber,
                  child: Image.asset('images/dice$secondDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getRandomNumber() {
    setState(() {
      firstDice = Random().nextInt(5) + 1;
      secondDice = Random().nextInt(5) + 1;
    });
  }
}
