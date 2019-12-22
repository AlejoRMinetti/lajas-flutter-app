import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImg;
  String name;
  String details;
  String comment;

  Review(this.pathImg, this.name, this.comment, this.details);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComments = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 10.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
        maxLines: 2,
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
          color: Color(0xffa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(name,
      textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComments
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImg)
          )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}