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
            leading: const Icon(
              CupertinoIcons.info_circle_fill,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              "ABOUT US",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "OUR MENU",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => const MenuScreen()),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.delivery_dining_sharp,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "ORDER ONLINE",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => const orderonline()),
            ),
          ),
          ListTile(
            leading: const Icon(
              CupertinoIcons.location_solid,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "LOCATIONS",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.insert_comment_rounded,
              color: Colors.white,
              size: 25,
            ),
            title: const Text(
              "SOCIAL MEDIA",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  fullscreenDialog: true, builder: (_) => const SocialmediaScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
