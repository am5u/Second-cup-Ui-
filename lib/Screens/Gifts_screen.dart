import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/data.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/Giftcard.dart';

class Mygifts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "MY GIFTS",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "ACTIVE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "ARCHIVE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100),
                children: [
                  ...allGifts
                      .where((e) =>
                          e.status != "Expired" && e.status != "Redeemed")
                      .map((e) => Giftcard(gift: e))
                ],
              ),
              ListView(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100),
                children: [
                  ...allGifts
                      .where((e) =>
                          e.status == "Expired" || e.status == "Redeemed")
                      .map((e) => Giftcard(gift: e))
                ],
              )
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}
