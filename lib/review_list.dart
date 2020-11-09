import 'package:flutter/material.dart';
import 'package:flutter_trial_tripss/screens/home.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  int amountReviews;

  ReviewList(this.amountReviews);

  Widget setReviews(int numReviews) {
    List<Widget> reviews = [];
    List(numReviews).forEach((item) => reviews.add(Review(
        'assets/images/people.jpg',
        'Esteban Aragón',
        '1 review - 1 photo',
        'Everything was great!')));
    return new Column(children: reviews);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      key: ValueKey('${selectedSpot.value}'),
      duration: Duration(milliseconds: 600),
      tween: Tween<double>(begin: .8,end: 1),
      builder: (BuildContext context, double value, Widget child) {
        return Transform.scale(
          child: child,
         scale: value,
        );
      },
      child: Column(
        children: <Widget>[
          Review(
              'https://images.unsplash.com/photo-1542838687-f960f044ef1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
              'Nepali Babu',
              '1 review - 1 photo',
              'Vayankar ramro thau xa hai guys!'),
          Review(
              'https://images.unsplash.com/photo-1542838077-57653741795a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
              'Rukum Thito',
              '1 review - 5 photo',
              'Feri feri ni aauna man lagxa malai ta'),
          Review(
              'https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
              'Gopal Nepal',
              '1 review - 2 photo',
              'Very clean and peaceful'),
        ]..shuffle(),
      ),
    );
  }
}
