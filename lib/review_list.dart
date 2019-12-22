import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/review.dart';

class ReviewList extends StatelessWidget{

  String pathImg1 = "images/EzeViajero.png";
  String name1 = "EMINEM from Bariloche";
  String details1 = "1 review 5 photos";
  String comment1 = "Tierra natal donde mis actos crearon leyendas";

  String pathImg2 = "images/BorraViajer.png";
  String name2 = "BORRA from Japan";
  String details2 = "1 review 3 photos";
  String comment2 = "La aurora boreal puede verse en esos cielos";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImg1, name1, comment1, details1),
        Review(pathImg2, name2, comment2, details2),
        Review("images/YoEnHosteria.png", "CHAMA from Gral. Rodriguez",
            "Firme en estas tierras preservando su esencia", "3 review 6 photos")
      ],
    );
  }
}