import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stless for hot reload
//add name of app after class so it can be run in runApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        //SafeArea() to keep the app from interfering with the phone's upper display
        //(time, battery, etc)
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/Picture1.png'),
              ),
              Text(
                'Rafael Rangel',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ATHLETIC GENIUS',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+52 722 685 21 55',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    'rlrangeldelatejera@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//alt + enter to wrap things
//padding wraps child in a margin
/*child: Padding(
padding: EdgeInsets.all(25.0),
child: Row(
children: <Widget>[
Icon(
Icons.mail,
color: Colors.teal,
),
SizedBox(
width: 10.0,
),
Text(
'rlrangeldelatejera@gmail.com',
style: TextStyle(
color: Colors.teal.shade900,
fontFamily: 'SourseSansPro',
fontSize: 20.0,
),
),
],
),
),
*/
