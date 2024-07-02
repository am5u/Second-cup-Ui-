import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/InvoiceCard.dart';
import 'package:hello_world/wedgits/Navbar.dart';

class InvoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
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
        body: Container(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100),
            children: [...invoices.map((e) => InvoiceCard(invoice: e))],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
