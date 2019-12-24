import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/places_list.dart';
import 'package:platzi_trips_flutter_app/review.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.indigo,
      child: ListView(
                children: <Widget>[
                  Text("Perfil",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),),
                  Review("images/EzeViajero.png",
                      "EMINEM from Bariloche",
                      "", "eze_eminem@hotmail.com"),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.home,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Icon(Icons.favorite,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Icon(Icons.explore,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        Icon(Icons.supervised_user_circle,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Icon(Icons.account_balance,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ],
                    ),
                  ),
                  PlacesList()
                  //DescriptionPlace("Las Lajas", 3, "Lajita"),
                  //ReviewList()
                ]
            ),
    );
  }
}

