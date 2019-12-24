import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTripsCupertino extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PlatziTripsCupertino();
  }
}

class _PlatziTripsCupertino extends State<PlatziTripsCupertino>{

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: widgetsChildren[indexTap],

      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple
          ),
        child: CupertinoTabScaffold(

          tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.indigo),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.indigo),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.indigo),
                    title: Text("")
                ),
              ]
          ),

          // ignore: missing_return
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrips(),
                );
                break;
            }
          },
        ),
      ),
    );
  }
}

