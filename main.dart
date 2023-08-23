import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftnumber = 1;
  var rightnumber = 1;
  void changediceface() {
    setState(() {
      leftnumber = Random().nextInt(6) + 1;
      rightnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changediceface();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set transparent background
                ),
                child: Image.asset('images/dice$leftnumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changediceface();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set transparent background
                ),
                child: Image.asset('images/dice$rightnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
