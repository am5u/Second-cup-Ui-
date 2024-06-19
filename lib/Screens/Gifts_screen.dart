import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/data.dart';
import 'package:hello_world/wedgits/Giftcard.dart';
import 'package:hello_world/wedgits/buttonsmenu.dart';

class Mygifts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY GIFTS",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text(
                  "ACTIVE(1)",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "ARCHIVE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100),
              children: [...allGifts.map((e) => Giftcard(gift: e))],
            ),
          ),
          Buttonsmenu()
        ],
      ),
    );
  }
}
