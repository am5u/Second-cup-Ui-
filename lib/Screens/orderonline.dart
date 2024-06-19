import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/Navbar.dart';
import 'package:hello_world/wedgits/buttonsmenu.dart';

class orderonline extends StatelessWidget {
  const orderonline({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        drawer: Navbar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Stack(
            children: [
              ListView(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Image(
                        image: AssetImage("images/talbat.png"),
                      )),
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
      ),
    );
  }
}
