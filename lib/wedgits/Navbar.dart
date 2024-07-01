import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Screens/menu_screen.dart';
import 'package:hello_world/Screens/orderonline.dart';
import 'package:hello_world/Screens/socialmedia_screen.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: Icon(
              CupertinoIcons.info_circle_fill,
              color: Colors.white,
              size: 40,
            ),
            title: Text(
              "ABOUT US",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "OUR MENU",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => MenuScreen()),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.delivery_dining_sharp,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "ORDER ONLINE",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => orderonline()),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.location_solid,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "LOCATIONS",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.insert_comment_rounded,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              "SOCIAL MEDIA",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => SocialmediaScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
