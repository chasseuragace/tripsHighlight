import 'package:flutter/material.dart';

import 'actions_profile.dart';
import 'gradient_back.dart';



class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment(0, -0.2),
      children: <Widget>[
        GradientBack("Profile", 400.0),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 120.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://static.platzi.com/media/avatars/avatars/estebanaragonda6b11cac4ce4f1c_e3111339-1196-4e98-9d49-4d6ec69002ee.jpg"))),
                  ),
                  Container(
                      height: 50.0,
                      margin: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Some User Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              fontFamily: "Lato",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "username@mail.com",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                fontFamily: "Lato",
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            ActionsProfile(),
          ],
        ),
      ],
    );
  }
}

// "https://static.platzi.com/media/avatars/avatars/estebanaragonda6b11cac4ce4f1c_e3111339-1196-4e98-9d49-4d6ec69002ee.jpg"
