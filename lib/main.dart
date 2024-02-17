import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Center(
              child: Text(' Dice _Click',
                  style: TextStyle(
                    color: Colors.white,
                  ))), // Adding a title to the AppBar
          backgroundColor: Colors.red,
        ),
        body: SafeArea(child: DicePage()),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  void updateDiceValues() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                updateDiceValues();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                updateDiceValues();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
