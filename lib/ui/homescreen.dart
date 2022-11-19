import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/ui/homepage/maincategory.dart';
import 'package:fluttertest/ui/homepage/specialscombos.dart';
import 'package:fluttertest/ui/homepage/toppiks.dart';
import 'package:fluttertest/ui/loginscreen.dart';
import 'package:fluttertest/widgets/homescreenlistwidget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marquee/marquee.dart';

import '../model/homescreenlistmodel.dart';
import '../palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  List imgList = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg"
  ];
   int page = 0;

  List<HomeScreenListModel> images1 = [
    HomeScreenListModel(
        '0', "assets/images/pi101.jpeg", "Two Medium Pizza", '10.65'),
    HomeScreenListModel(
        '1', "assets/images/pi102.jpeg", "Speciality Pizza's", '15.00'),
    HomeScreenListModel(
        '3', "assets/images/pi103.jpeg", "Special Combo", '29.99'),
    HomeScreenListModel(
        '4', "assets/images/pi104.jpeg", "Chinese Combo", '14.99'),
    HomeScreenListModel(
        '5', "assets/images/pi105.jpeg", "Two Med pizza and Drink", '39.99'),
  ];
  List<HomeScreenListModel> images2 = [
    HomeScreenListModel(
        '0', "assets/images/pi101.jpeg", "Cheese Pizza", '5.80'),
    HomeScreenListModel(
        '1', "assets/images/pi102.jpeg", "Hawaiian Pizza", '5.40'),
    HomeScreenListModel(
        '3', "assets/images/pi103.jpeg", "Donair Pizza", '21.95'),
    HomeScreenListModel(
        '4', "assets/images/pi104.jpeg", "BBQ Chicken", '22.00'),
    HomeScreenListModel(
        '5', "assets/images/pi105.jpeg", "Meat Lover Pizza", '100'),
  ];
  List<HomeScreenListModel> images3 = [
    HomeScreenListModel(
        '0', "assets/images/pi101.jpeg", "mytee", '-'),
    HomeScreenListModel(
        '1', "assets/images/pi102.jpeg", "Deserts", '-'),
    HomeScreenListModel(
        '3', "assets/images/pi103.jpeg", "Appetizer Choice", '-'),
    HomeScreenListModel(
        '4', "assets/images/pi104.jpeg", "Side Choice", '-'),
    HomeScreenListModel(
        '5', "assets/images/pi105.jpeg", "Rotisserie Chicken Dinnner", '-'),
  ];
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: Palette.inputfieldbackgroundcolor,
      key: _scaffoldkey,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: DrawerHeader(
                child: Stack(
                  children: [
                    Container(
                      child: Container(
                          height: 200,
                          width: 200,
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage('assets/images/ic_profile.png'),
                            backgroundColor: Colors.white,
                          )),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 60, left: 160),
                        child:
                            Text('Guest User', style: TextStyle(fontSize: 20)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_terms_condition.png',
                height: 30,
                width: 30,
              ),
              title: Text('Select Branch'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_notification.png',
                height: 30,
                width: 30,
              ),
              title: Text('Notification'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_profile.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_delivery_location.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Address'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_order_history.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_table_reservation.png',
                height: 30,
                width: 30,
              ),
              title: Text('Table Reservation'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_table_reservation.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Reservation'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_favorite.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Favorites'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_gift_card.png',
                height: 30,
                width: 30,
              ),
              title: Text('Gift Cards'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_refer_earn.png',
                height: 30,
                width: 30,
              ),
              title: Text('Refer and Earn'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_reward.png',
                height: 30,
                width: 30,
              ),
              title: Text('Reward/Loyalty Points'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_restaurant_feedback.png',
                height: 30,
                width: 30,
              ),
              title: Text('Restaurant Feedback'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_about_us.png',
                height: 30,
                width: 30,
              ),
              title: Text('About Us'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_terms_condition.png',
                height: 30,
                width: 30,
              ),
              title: Text('Terms & Condition'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_help_support.png',
                height: 30,
                width: 30,
              ),
              title: Text('Help & Support'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_setting.png',
                height: 30,
                width: 30,
              ),
              title: Text('Settings'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                //padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                width: 10,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                   color: Palette.cursorcolor,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: MaterialButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(color: Palette.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                              padding: EdgeInsets.only(top: 15),
                              onPressed: () =>
                                  _scaffoldkey.currentState?.openDrawer(),
                              icon: Image.asset('assets/images/ic_menu.png'),
                              iconSize: 30,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 15, left: 100),
                              child: Text(
                                'Delivery Address',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 0, left: 200),
                                child: IconButton(
                                  onPressed: () {},
                                  // =>
                                  //     _scaffoldkey.currentState?.openDrawer(),
                                  icon:
                                      Image.asset('assets/images/ic_down.png'),
                                  iconSize: 30,
                                )),


                            Container(
                              height: 50,
                              width: 300,
                              padding: EdgeInsets.only(top: 35, left: 50),
                              child: Marquee(
                                  text: '10,11 nr.doctor house, tulsibag society ,parimal garden, aambavadi, ahemedabad, gujrat, 380007, india.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  scrollAxis: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  blankSpace: 20.0,
                                  velocity: 100.0,
                                  pauseAfterRound: Duration(seconds: 0),
                                  startPadding: 10.0,
                                  accelerationDuration: Duration(seconds: 1),
                                  accelerationCurve: Curves.linear,
                                  decelerationDuration: Duration(milliseconds: 500),
                                  decelerationCurve: Curves.easeOut,
                                )
                              
                              // SingleChildScrollView( 
                              //   scrollDirection: Axis.horizontal,
                              //   child: Text(
                              //     "10,11 nr.doctor house, tulsibag society ,parimal garden, aambavadi, ahemedabad, gujrat, 380007, india",
                              //     // style: TextStyle(
                              //     //   color: Colors.green,
                              //     //   fontWeight: FontWeight.bold,
                              //     //   fontSize: 20.0,
                              //     // ),
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 0, left: 300),
                          child: IconButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                              msg: "Cart is Empty",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Color.fromARGB(255, 219, 0, 0),
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                            },
                            
                            icon: Image.asset('assets/images/ic_emptycart.png'),
                            iconSize: 50,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                 CarouselSlider.builder(
                itemCount: imgList.length,
                options: CarouselOptions(
                    height: 170,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        page = index;
                      });
                    }),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    child: Image.asset(imgList[index],fit:BoxFit.cover),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                      width: 13,
                      height: 13,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        border: Border.all(color:Palette.cursorcolor) ,
                        shape: BoxShape.circle,
                        color: page == index
                            ? Palette.white
                            : Palette.cursorcolor
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(

                height: 5,
              ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, right: 170),
                          child: Text(
                            'Special / Combos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 270),
                          child: GestureDetector(
                            onTap: () {
                                Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SpecialsCombosScreen()),
                                          );
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(color: Palette.cursorcolor,fontWeight: FontWeight.bold, fontSize: 18,decoration: TextDecoration.underline),
                            
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      scrollDirection: Axis.horizontal,
                      itemCount: images1.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SpecialsCombosScreen()),
                                                    );
                            },
                            child: HomeScreenListWidget(user: images1[index]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 0,
                        );
                      },
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, right: 170),
                          child: Text(
                            'Top Piks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 270),
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TopPiksScreen()),
                                          );
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(color: Palette.cursorcolor,fontWeight: FontWeight.bold, fontSize: 18,decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: images2.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              TopPiksScreen()),
                                                    );
                            },
                            child: HomeScreenListWidget(user: images2[index])
                            );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 3,
                        );
                      },
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, right: 170),
                          child: Text(
                            'Main Category',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 270),
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MainCategoryScreen()),
                                          );
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(color: Palette.cursorcolor,fontWeight: FontWeight.bold, fontSize: 18,decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      scrollDirection: Axis.horizontal,
                      itemCount: images3.length,
                      itemBuilder: (context, index) {
                       
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MainCategoryScreen()),
                                                    );
                            },
                            child: HomeScreenListWidget(user: images3[index]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 2,
                        //   color: Palette.cursorcolor,
                        //  thickness: 5,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }
}
