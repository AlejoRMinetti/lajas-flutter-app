import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool corazonState = false;
  IconData corazoncito = Icons.favorite_border;

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("Agregaste a favoritos"))
    );

    // TODO: cambiar icono favorito
    if(corazonState){
      corazoncito = Icons.favorite_border;
      corazonState = false;
    }else{
      corazoncito = Icons.favorite_border;
      corazonState = true;
    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true, //botono tamanio mini
      tooltip: "Fav", // mensaje al dejar apretado
      child: Icon(corazoncito),
      onPressed: onPressedFav,
    );
  }


}