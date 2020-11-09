import 'package:flutter/material.dart';
import 'package:flutter_trial_tripss/screens/home.dart';

import './card_image_list.dart';
import './gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
 final List<Place> places;

  const HeaderAppBar({Key key, this.places}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Namaste", 250.0), CardImageList(places:places)],
    );
  }
}
