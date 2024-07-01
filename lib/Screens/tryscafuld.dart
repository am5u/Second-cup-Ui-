import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/Navbar.dart';

class FirstApp extends StatefulWidget {
  @override
  const FirstApp({super.key});

  State<FirstApp> createState() => _firstapp();
}

class _firstapp extends State<FirstApp> {
  int i = 0;
  bool stutse = false;

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          drawer: Navbar(),
          appBar: AppBar(
            title: Center(
              child: Text(
                "REFER  A FRIEND ",
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: [
              Icon(
                Icons.person,
                size: 40,
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    "GET A BENEFIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "FOR EVERY FRIEND THAT JOINS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Center(
                    child: Image(
                      image: AssetImage("images/profile.jpg"),
                      width: 250,
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "INVITE NOW ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        "OR",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "TAP TO COPY INVITE CODE",
                        style: TextStyle(color: Colors.white),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "3SXEC",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50),
                            backgroundColor: Colors.black,
                            elevation: 0,
                            // Remove the elevation (shadow)
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            side: BorderSide(
                                width: 1,
                                color: Colors.white), // Add a white border
                          )),
                    ],
                  )),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
