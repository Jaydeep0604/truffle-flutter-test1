import 'package:flutter/material.dart';
import 'package:fluttertest/model/categorymodel.dart';
import 'package:fluttertest/model/homesublistmodel.dart';

import '../model/homescreenlistmodel.dart';
import '../palette.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key, required this.catlist}) : super(key: key);

  CategoryModel catlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
             width: 160,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    
                      image: AssetImage(catlist.imageurl), fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110,left: 5),
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black54,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.only(top: 5),
              alignment: Alignment.topCenter,
              child: Text(
                "${catlist.description}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
                             