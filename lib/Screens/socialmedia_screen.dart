import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialmediaScreen extends StatefulWidget {
  const SocialmediaScreen({super.key});

  @override
  _Sociaclmedia createState() => _Sociaclmedia();
}

class _Sociaclmedia extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Social Media",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Link(
              target: LinkTarget.self,
              uri: Uri.parse('https://www.instagram.com/secondcupegypt/?hl=ar'),
              builder: (context, followlink) => ElevatedButton(
                onPressed: (followlink),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Image(
                    image: AssetImage(
                  "images/instgram.gif",
                )),
              ),
              // )],
              
            ),
          ],
        ),
      ),
    ));
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
