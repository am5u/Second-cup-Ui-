import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          primaryColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.black),
      home: const HomeScreen(),
    );
  }
}
