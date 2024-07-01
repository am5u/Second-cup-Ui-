import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/Navbar.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import

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
          child: ListView(
            children: [
              Link(
                target: LinkTarget.self,
                uri: Uri.parse('https://www.talabat.com/ar/egypt/second-cup'),
                builder: (context, followlink) => ElevatedButton(
                  onPressed: (followlink),
                  child: Image(
                      image: AssetImage(
                    "images/talbat.png",
                  )),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                // )],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(), // Corrected the typo
      ),
    );
  }
}
