import 'package:flutter/material.dart';

import 'card_image.dart';

class PlacesList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 450.0,
      width: 450.0,
      padding: EdgeInsets.all(25.0),
      child: Center(
        child: ListView(

          //scrollDirection: Axis.horizontal, //por defecto es vertical
          children: <Widget>[
            CardImage("images/entradaLajas.png"),
            CardImage("images/clubHouseLajas.png"),
            CardImage("images/sateliteLajas.png"),
            CardImage("images/iconoLajas.png")
          ],
        ),
      ),
    );
  }

}