import 'package:flutter/material.dart';
import 'package:fluttertest/palette.dart';
import 'package:fluttertest/ui/homescreen.dart';

import '../../model/homesublistmodel.dart';
import '../../widgets/homesublistwidget.dart';

class TopPiksScreen extends StatefulWidget {
  const TopPiksScreen({ Key? key }) : super(key: key);

  @override
  State<TopPiksScreen> createState() => _TopPiksState();
}

class _TopPiksState extends State<TopPiksScreen> {
  List<HomeSubListModel> sublist1 = [
    HomeSubListModel('0', "assets/images/pi101.jpeg", "Cheese Pizza", '5.80'),
    HomeSubListModel('1', "assets/images/pi102.jpeg", "Hawaiian Pizza", '5.40'),
    HomeSubListModel('2', "assets/images/pi103.jpeg", "Donair Pizza", '21.95'),
    HomeSubListModel('3', "assets/images/pi104.jpeg", "BBQ Chicken", '22.00'),
    HomeSubListModel( '4', "assets/images/pi105.jpeg", "Meat Lover Pizza", '11.50'),
    HomeSubListModel('5', "assets/images/pi105.jpeg", "Two Topping Pizza", '8.00'),
    HomeSubListModel('6', "assets/images/pi105.jpeg", "Cheese Burger", '6.25'),
    HomeSubListModel('7', "assets/images/pi105.jpeg", "Sailsbury Burger", '6.50'),
    HomeSubListModel('8', "assets/images/pi105.jpeg", "Gourment Burger", '7.25'),
    HomeSubListModel('9', "assets/images/pi105.jpeg", "Mushroom Burger", '6.50'),

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
                              onPressed: (){
                                 Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
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
                                'Top Piks',
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
                                                builder: (context) =>
                                                    HomeScreen()),
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
                padding: EdgeInsets.only(top: 10,right: 20,left: 20),
                alignment: Alignment.topCenter,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    filled: true,
                    fillColor:Palette.white,
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
              itemBuilder: (context,index) {
                
                return HomeSubListWidget(sublist: sublist1[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 5,);
              },
            ),
          ))
          ],

        )),
    );
  }
}
