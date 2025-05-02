import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/Navbar.dart';

class FirstApp extends StatefulWidget {
  @override
  const FirstApp({super.key});

  @override
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
          drawer: const Navbar(),
          appBar: AppBar(
            title: const Center(
              child: Text(
                "REFER  A FRIEND ",
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: const [
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
                const Center(
                  child: Text(
                    "GET A BENEFIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text(
                    "FOR EVERY FRIEND THAT JOINS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
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
                    child: const Text(
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
                      const Text(
                        "OR",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        "TAP TO COPY INVITE CODE",
                        style: TextStyle(color: Colors.white),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(200, 50),
                            backgroundColor: Colors.black,
                            elevation: 0,
                            // Remove the elevation (shadow)
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            side: const BorderSide(
                                width: 1,
                                color: Colors.white), // Add a white border
                          ),
                          child: const Text(
                            "3SXEC",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  )),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ));
  }
}
