import 'package:flutter/material.dart';
//for math functions, also random numbers, (read documentation)
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//widget that changes, mutable
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //function
  void changeDiceFace() {
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
            child: FlatButton(
              //void callback
              onPressed: () {
                //setState for the user interface to be rebuild
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//Dart = statically typed language
//to have a variable that can change form one type to another, use:
//dynamic name;
//avoid using var and dynamic for best coding practices

//Dart Functions:
//On pressed : (){ do something} // this is a void callback/anonymous functions

//click on light bulb for more options (example delete widget)

//flex is used to switch the sizes of expanded widgets
//flex: 2
//flex: 1
