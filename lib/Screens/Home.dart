import 'package:flutter/material.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/Screens/Gifts_screen.dart';
import 'package:hello_world/data.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/Navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: Image.asset(
            "images/Artboard+2@2x.png",
            width: 100,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.person,
              size: 50,
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/images.png"),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          child: Text(
                        'AMMAR ELDESOUKI',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                      Container(
                        child: Text(
                          "01067204840",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.qr_code_2,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "1570",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Container(
                              child: Text("POINTS",
                                  style: TextStyle(color: Colors.white))),
                          Container(
                            child: Icon(
                              Icons.shopping_bag,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      // Add some margin

                      child: Text(
                        "|",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                    Container(
                      //sssss

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Container(
                            child: Text(
                              "GIFT LIST",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.card_giftcard,
                              color: Colors.red,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Image(image: AssetImage("images/newcollection.jpg"))),
              Container(
                child: Text(
                  "CURRENT BALANCE:1507 POINTS",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
