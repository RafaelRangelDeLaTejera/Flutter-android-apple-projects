import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.red,
              ),
              SizedBox(
                width: 55.0,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 200.0,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 200.0,
                  ),
                ],
              ),
              SizedBox(
                width: 55.0,
              ),
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//for colums:{

//to give the column vertical size (mainAxisSize is for
// the vertical size):
//  mainAxisSize: MainAxisSize.min,

//this is for changing the direction (order) of
//each container, up means from buttom to top,
//and down is the default:
//  verticalDirection: VerticalDirection.down,

//to change spacing between containers, (by default
//it is start):
//  mainAxisAlignment: MainAxisAlignment.start

//to change the way the containers are align on the
//horizontal axis:
//  crossAxisAlignment: CrossAxisAlignment.end,
//but in order to align all the containers all the way to
//the end, we must create an invisible container with an infinite
//width so that all the containers align to the end of the display:
//  container(
//    width: double.infinity,
//    height: 10.0,
//  ),
//to stretch the children, you can use:
// crossAxisAlignment: CrossAxisAlignment.stretch,

//to create space between containers you can use:
//  SizedBox(
//    height: 20.0,
//  ),

//all that applies for columns also applies for rows
//}

//Note: to wrap something, press alt+enter for options

//different types of margins to see options: EdgeInsets.
//margin: EdgeInsets.all(40.0),
//padding is for the child of the container, its used instead of margin
//padding: EdgeInsets.all(20.0),
//Containers with no child will be as big as they can
//Containers with child size to the children size, the size is determined
//by the piece of text
