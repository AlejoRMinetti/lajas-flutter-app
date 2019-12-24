import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, //por defecto es vertical
        children: <Widget>[
          CardImage("images/entradaLajas.png"),
          CardImage("images/clubHouseLajas.png"),
          CardImage("images/sateliteLajas.png"),
          CardImage("images/iconoLajas.png")
        ],
      ),
    );
  }
  
}