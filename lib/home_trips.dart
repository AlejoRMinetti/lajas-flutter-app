import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/description_place.dart';
import 'package:platzi_trips_flutter_app/review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String descriptionDummy = 'Las Lajas es un barrio alejeado de la ciudad con una antigua arboleda ancestral perteneciente a una historica estancia, la cual fue refaccionada para establecer el Club House, siendo centro de reunion de sabios y profetas.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children: <Widget>[
          ListView(
              children: <Widget>[
                DescriptionPlace("Las Lajas", 3, descriptionDummy),
                ReviewList()
              ]
          ),
          HeaderAppbar()
        ]
    );
  }

}