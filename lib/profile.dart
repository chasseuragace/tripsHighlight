import 'package:flutter/material.dart';
import 'package:flutter_trial_tripss/save_places_list.dart';

import 'header_profile.dart';



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderProfile(),
        SavePlacesList(),
      ],
    );
  }
}
