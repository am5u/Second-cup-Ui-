import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/Navbar.dart';
import 'package:hello_world/wedgits/buttonsmenu.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
        body: Stack(
          children: [
            ListView(
              children: [
                Expanded(
                    child: Image(
                  image: AssetImage("images/second-cup_menu_1.jpg"),
                )),
                Expanded(
                    child: Image(
                  image: AssetImage("images/second-cup_menu_2.jpg"),
                )),
                Expanded(
                    child: Image(
                  image: AssetImage("images/menu-Restaurant-Second-Cup-3.jpg"),
                ))
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Buttonsmenu(),
            )
          ],
        ),
      ),
    );
  }
}
