import 'package:flutter/material.dart';

import '../description_place.dart';
import '../review_list.dart';
import '../header_appbar.dart';

class Home extends StatelessWidget {

  var places= createPlaces();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ValueListenableBuilder(
          valueListenable: selectedSpot,
          builder: (BuildContext context,int value, Widget child) {
            return  ListView(
            children: <Widget>[
            DescriptionPlace(places[value].name, places[value].rating,
                places[value].discription),
            ReviewList(5)
            ],
            );
          },

        ),
        HeaderAppBar(places:places)
      ],
    );
  }
}


class Place{
  String name,discription,image;
int id;

  Place({this.name, this.discription, this.rating,this.id ,this.image});

  int  rating;
}

List<Place> createPlaces(){
  var images= ["Swayambhunath.jpg","pokhara.jpg","Tilicho-lake.jpg","maccha.jpg" ];
  var names= ["Swoymbhunath","Pokhara","Tilicho","MacchaPuchre Himal" ];
  var rating= [4,5,5,4 ];
  var description = 'Lorem ipsum dolor sit amet,'
      ' consectetur adipiscing elit. Sed id nisl in ex'
      ' eleifend mattis. Sed in auctor risus. Aliquam a'
      ' viverra justo. Pellentesque habitant morbi tristique'
      ' senectus et netus et malesuada fames ac turpis egestas.'
      ' Donec sit amet odio eget lorem lobortis blandit.'
      ' Proin pulvinar mi sed lorem hendrerit, vitae feugiat nunc rhoncus.';
List<Place> places=[];
for(int i =0;i<names.length;i++)
  {
    places.add(Place(name: names[i],rating: rating[i],discription: description,id: i,image: "assets/images/${images[i]}"));
  }
return places;
}
ValueNotifier<int> selectedSpot =ValueNotifier(0);