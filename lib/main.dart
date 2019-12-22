import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/description_place.dart';
import 'package:platzi_trips_flutter_app/gradient_back.dart';
import 'package:platzi_trips_flutter_app/review_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String descriptionDummy = 'Las Lajas es un barrio alejeado de la ciudad con una antigua arboleda ancestral perteneciente a una historica estancia, la cual fue refaccionada para establecer el Club House, siendo centro de reunion de sabios y profetas.';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
            children: <Widget>[
              ListView(
                  children: <Widget>[
                    DescriptionPlace("Las Lajas", 3, descriptionDummy),
                    ReviewList()
                  ]
              ),
              GradientBack()
            ]
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
