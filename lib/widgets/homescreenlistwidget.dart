import 'package:flutter/material.dart';

import '../model/homescreenlistmodel.dart';

class HomeScreenListWidget extends StatelessWidget {
  HomeScreenListWidget({Key? key, required this.user}) : super(key: key);

  HomeScreenListModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
             width: 200,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    
                      image: AssetImage(user.imageurl), fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 5),
            child: Container(
              height: 50,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.only(top: 5),
              alignment: Alignment.topCenter,
              child: Text(
                "${user.description}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 115, left: 15),
              // height: 50,
              //                     width: 250,
              child: Text(
                // ' ${user.price}',
                '\$ ${user.price}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ))
        ],
      ),
    );
  }
}
// Marquee(
//                                   text: '10,11 nr.doctor house, tulsibag society ,parimal garden, aambavadi, ahemedabad, gujrat, 380007, india.',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                   scrollAxis: Axis.horizontal,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   blankSpace: 20.0,
//                                   velocity: 100.0,
//                                   pauseAfterRound: Duration(seconds: 0),
//                                   startPadding: 10.0,
//                                   accelerationDuration: Duration(seconds: 1),
//                                   accelerationCurve: Curves.linear,
//                                   decelerationDuration: Duration(milliseconds: 500),
//                                   decelerationCurve: Curves.easeOut,
// )
