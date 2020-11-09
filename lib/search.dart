import 'package:flutter/material.dart';
import 'package:flutter_trial_tripss/card_image.dart';
import 'package:flutter_trial_tripss/screens/home.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var places = createPlaces();

  TextEditingController con = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Colors.blue, Colors.white30],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.3, 1],
                tileMode: TileMode.clamp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Search Places",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white,  fontFamily: "Lato", fontSize: 30.0,

                  fontWeight: FontWeight.bold,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 50,
                  child: TextField(
                    onChanged: (c) {
                      setState(() {});
                    },
                    controller: con,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search "),
                  )),
            ),
            SizedBox(
              height: 420,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(right: 24),
                scrollDirection: Axis.horizontal,
                children: placess().isEmpty? [Text("No results!",style: Theme.of(context).textTheme.headline3,)]:placess(),
              ),
            ),
          ],
        ),
      ),
    );
  }

 List<Widget> placess() {
   return places
        .where((element) =>
        element.name.toLowerCase().contains(con.text))
        .map((e) => Column(
      children: [
        CardImage(
          e.image,
          height: 280,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            e.name,
            style: Theme.of(context).textTheme.headline5,
          ),
        )
      ],
    ))
        .toList();
  }
}
