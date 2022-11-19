import 'package:flutter/material.dart';
import 'package:fluttertest/model/homesublistmodel.dart';

import '../model/homescreenlistmodel.dart';
import '../palette.dart';

class HomeSubListWidget extends StatelessWidget {
  HomeSubListWidget({Key? key, required this.sublist}) : super(key: key);

  HomeSubListModel sublist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card( 
        color: Palette.white,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
        child: Container(
          height: 120,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                 width: 130,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        
                          image: AssetImage(sublist.imageurl), fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 175),
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    //  color: Colors.black54,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 5),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "${sublist.description}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 85, left: 145),
                  // height: 50,
                  //                     width: 250,
                  child: Text(
                    // ' ${user.price}',
                    '\$ ${sublist.price}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )),
                  Padding(
                              padding: EdgeInsets.only(top: 80,left: 245),
                              child: SizedBox(
                                width:80,
                                height: 30,
                                child: MaterialButton(
                                  color: Palette.cursorcolor,
                                  textColor: Palette.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  onPressed: () {
                                    
                                  },
                                  child: Text('Add'),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 50,left: 135),
                            
                            child: Container(
                              height: 20,
                              alignment: Alignment.center,
                              width: 80,
                               decoration: BoxDecoration(
                                color: Color.fromARGB(255, 174, 198, 236),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              
                              child: Text("Customize",style: TextStyle(color: Color.fromARGB(255, 48, 57, 146)),),
              
                            ),
                            ),
                            Container(
                          padding: EdgeInsets.only(top: 35, left: 285),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/fav.png'),
                            //iconSize: 5,
                          )),
                            
            ],
          ),
        ),
      ),
    );
  }
}
