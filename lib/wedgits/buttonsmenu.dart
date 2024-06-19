import 'package:flutter/material.dart';
import 'package:hello_world/Screens/Gifts_screen.dart';
import 'package:hello_world/Screens/Home.dart';
import 'package:hello_world/Screens/invoice_screen.dart';

class Buttonsmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // You can adjust the height as per your need
      decoration: BoxDecoration(
        color: Colors.black, // You can adjust the color as per your need
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(
                    Icons.store,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "HOME",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Mygifts()));
                  },
                  child: Icon(
                    Icons.card_giftcard,
                    color: Colors.red,
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                Text(
                  "MYGIFTS",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InvoiceScreen()));
                  },
                  child: Icon(
                    Icons.receipt_long_rounded,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "MY ACTIVITY",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("is pressed");
                  },
                  child: Icon(
                    Icons.people_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "REFER A FRIEND",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
