import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertest/ui/homescreen.dart';

import '../../model/categorymodel.dart';
import '../../model/homesublistmodel.dart';
import '../../palette.dart';
import '../../widgets/categorywidget.dart';
import '../../widgets/homesublistwidget.dart';

class MainCategoryScreen extends StatefulWidget {
  const MainCategoryScreen({ Key? key }) : super(key: key);

  @override
  State<MainCategoryScreen> createState() => _MainCategoryScreenState();
}

class _MainCategoryScreenState extends State<MainCategoryScreen> {
  List<CategoryModel> catlist1 = [
    CategoryModel('0', "assets/images/pi101.jpeg", "mytee"),
    CategoryModel('1', "assets/images/pi102.jpeg", "Desert"),
    CategoryModel('3', "assets/images/p103.jpeg", "Appetizer Choice"),
    CategoryModel('4', "assets/images/pi102.jpeg", "Side Choice",),
    CategoryModel('5', "assets/images/pi105.jpeg", "Rotisserie Chicken Dinner"),
    CategoryModel('6', "assets/images/pi102.jpeg", "Pho"),
    CategoryModel('7', "assets/images/p103.jpeg", "Deluxe Fried Rice"),
    CategoryModel('8', "assets/images/pi102.jpeg", "Noodles"),
    CategoryModel('9', "assets/images/p104.jpeg", "Drinks"),
    CategoryModel('10', "assets/images/pi105.jpeg", "Sides"),
    CategoryModel('11', "assets/images/pi102.jpeg", "Donair"),
    CategoryModel('12', "assets/images/p104.jpeg", "Pizza"),
    CategoryModel('13', "assets/images/pi102.jpeg", "Burger"),
    
   

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
                        color: Palette.white,
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
                                'Main Category',
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
              child: Container(padding: EdgeInsets.only(top: 20),
            child: GridView.builder( itemCount: catlist1.length,  
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ),  
            itemBuilder: (BuildContext context, int index){  
                return 
                CategoryWidget(catlist: catlist1[index]); 
              }, 
            ),
            
          ))
          ],

        )),
    );
  }
}