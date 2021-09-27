import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    Geolocator()..forceAndroidLocationManager = true;
    try {
      //await means to wait for the position to be found before we return it as the output of this method
      Position position =
          await Geolocator() //the await keyword tells it to wait until the process is completed, so mark the method as async
              .getCurrentPosition(
                  desiredAccuracy: LocationAccuracy
                      .low); //method is asynchronous will happen outside of everything else
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
//you can only wait on methods that return future
