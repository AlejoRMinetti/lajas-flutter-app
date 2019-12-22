import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/card_image_list.dart';
import 'package:platzi_trips_flutter_app/gradient_back.dart';

class HeaderAppbar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }


}