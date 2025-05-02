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
        drawer: const Navbar(),
        appBar: AppBar(
          title: Image.asset(
            "images/Artboard+2@2x.png",
            width: 100,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: const [
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
                  child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/images.png"),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            child: const Text(
                          'AMMAR ELDESOUKI',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )),
                        Container(
                          child: const Text(
                            "01067204840",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(
                      Icons.qr_code_2,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: const Text(
                              "1570",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Container(
                              child: const Text("POINTS",
                                  style: TextStyle(color: Colors.white))),
                          Container(
                            child: const Icon(
                              Icons.shopping_bag,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      // Add some margin

                      child: const Text(
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
                            child: const Text(
                              "1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "GIFT LIST",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            child: const Icon(
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
              const Expanded(
                  child: Image(image: AssetImage("images/newcollection.jpg"))),
              Container(
                child: const Text(
                  "CURRENT BALANCE:1507 POINTS",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
