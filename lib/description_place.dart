import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/review_list.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final start_half = Container(
      margin: EdgeInsets.only(
          top: 320,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xfff2C611), // o Colors.yellowAccent
      ),
    );

    final start_border = Container(
      margin: EdgeInsets.only(
          top: 320,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xfff2C611), // o Colors.yellowAccent
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
        top: 320,
        right: 3.0
      ),
      child: Icon(
          Icons.star,
        color: Color(0xfff2C611), // o Colors.yellowAccent
      ),
    );

    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "MaShanZheng",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start_half,
            start_border
          ],
        )
      ],
    );

    final description = Container(
      child: Text(descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff56575a)
        ),

      ),
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0
      )
      );
    
    return Column(
      children: <Widget>[
        titleStarts,
        description
      ],
    );
  }

}