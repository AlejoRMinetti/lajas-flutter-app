import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/platzi_trips.dart';
// FIXME: No anda usando bottonBar transparente:
//import 'package:platzi_trips_flutter_app/platzi_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: PlatziTripsCupertino(),
      home: PlatziTrips(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
