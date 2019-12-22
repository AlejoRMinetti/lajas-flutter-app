import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.lightGreen
          ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.6, 1.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
    );
  }


}