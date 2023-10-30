

import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';

class RatingStarBar extends StatefulWidget {
  const RatingStarBar({Key? key}) : super(key: key);

  @override
  State<RatingStarBar> createState() => _RatingStarBarState();
}

class _RatingStarBarState extends State<RatingStarBar> {
  int ratingCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Five point Star'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            FivePointedStar(
              onChange: (count){
                setState(() {
                  ratingCount = count;
                  print('--------->Rating Count:$ratingCount');
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
      ]
            ),
            Text(
              ratingCount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
