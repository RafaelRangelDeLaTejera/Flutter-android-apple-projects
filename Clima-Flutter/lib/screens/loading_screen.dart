import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    //remember widget lifecycle methods
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsDouble;

    //try method to test out code we are not sure will work, without crashing the app
    try {
      //what we want to try but are not sure it will work
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e); //prints the error to the terminal
      //alternative provided
      myMarginAsDouble = 15;
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsDouble ??
            15), //use value of myMarginDouble, but if it is null, use 15
        color: Colors.red,
      ),
    );
  }
}
