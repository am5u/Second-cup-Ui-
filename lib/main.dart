import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/Screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          primaryColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.black),
      home: HomeScreen(),
    );
  }
}
