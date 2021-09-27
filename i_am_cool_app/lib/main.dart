//I am cool app challenge
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[500],
        appBar: AppBar(
          centerTitle: true,
          title: Text('I am Cool'),
          backgroundColor: Colors.blue[500],
        ),
        body: Center(child: Image(image: AssetImage('images/Athlete UP.png'))),
      ),
    ),
  );
}
