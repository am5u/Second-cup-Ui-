import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';
import 'package:hello_world/wedgits/ButtonNNavgator.dart';
import 'package:hello_world/wedgits/InvoiceCard.dart';
import 'package:hello_world/wedgits/Navbar.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: const Navbar(),

        appBar: AppBar(
          title: Image.asset(
            "images/Artboard+2@2x.png",
            width: 100,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: const [
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
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
