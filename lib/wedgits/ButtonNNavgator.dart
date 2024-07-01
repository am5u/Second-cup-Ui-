import 'package:flutter/material.dart';
import 'package:hello_world/Screens/Gifts_screen.dart';
import 'package:hello_world/Screens/Home.dart';
import 'package:hello_world/Screens/invoice_screen.dart';
import 'package:hello_world/Screens/tryscafuld.dart';
import 'package:hello_world/wedgits/InvoiceCard.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    Mygifts(),
    InvoiceScreen(),
    FirstApp(),
  ];

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.store),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.card_giftcard),
      label: 'MyGifts',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.receipt_long_rounded),
      label: 'My Activity',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people_alt_outlined),
      label: 'Refer a Friend',
    ),
  ];

  void onTappedBar(int index) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => _children[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      onTap: onTappedBar,
      items: _items,
    );
  }
}
