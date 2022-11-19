import 'package:flutter/material.dart';
import 'package:fluttertest/palette.dart';
import 'package:fluttertest/ui/homescreen.dart';
import 'package:fluttertest/widgets/homesublistwidget.dart';

import '../../model/homescreenlistmodel.dart';
import '../../model/homesublistmodel.dart';

class SpecialsCombosScreen extends StatefulWidget {
  const SpecialsCombosScreen({Key? key}) : super(key: key);

  @override
  State<SpecialsCombosScreen> createState() => _SpecialsCombosState();
}

class _SpecialsCombosState extends State<SpecialsCombosScreen> {
  List<HomeSubListModel> sublist1 = [
    HomeSubListModel('0', "assets/images/pi101.jpeg", "Two Medium Pizza and Pop", '10.65'),
    HomeSubListModel('1', "assets/images/pi102.jpeg", "Speciality Pizza's", '15.00'),
    HomeSubListModel('3', "assets/images/pi103.jpeg", "Special Combo", '29.99'),
    HomeSubListModel('4', "assets/images/p102.jpeg", "Chinese Combo", '14.99'),
    HomeSubListModel('5', "assets/images/pi101.jpeg", "Two Med pizza and Drink", '39.99'),
    HomeSubListModel('6', "assets/images/pi102.jpeg", "Dinner Deal for 2", '42.48'),
    HomeSubListModel('7', "assets/images/p102.jpeg", "Mint Combo", '35.98'),
    HomeSubListModel('8', "assets/images/p102.jpeg", "Stream Dumpling", '23.56'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.inputfieldbackgroundcolor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Container(
              //color: Palette.inputfieldbackgroundcolor,
              decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                              padding: EdgeInsets.only(top: 0),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              icon: Image.asset('assets/images/ic_back.png'),
                              iconSize: 30,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 100),
                        child: Text(
                          'Specials / Combos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0, left: 320),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                            icon: Image.asset('assets/images/home_new.png'),
                            iconSize: 20,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            alignment: Alignment.topCenter,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: Palette.white,
                hintText: 'Search item',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/ic_search.png',
                    width: 0,
                    height: 0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
            child: ListView.separated(
              itemCount: sublist1.length,
              itemBuilder: (context, index) {
                return HomeSubListWidget(sublist: sublist1[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15,);
              },
            ),
          ))
        ],
      )),
    );
  }
}
