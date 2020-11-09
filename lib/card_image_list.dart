import 'package:flutter/material.dart';

import './card_image.dart';
import 'screens/home.dart';

class CardImageList extends StatelessWidget {
  final List<Place> places;

  const CardImageList({Key key, this.places}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return    Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white10,Colors.white,Colors.white],
              begin  : Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
      height: 350.0,
      child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children:  places.map((e) =>  GestureDetector(onTap: (){
            selectedSpot.value=e.id;
          },child: CardImage(e.image))).toList()
      ),
    );
  }
}
