import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Invoice {
  final List<String> name;
  final List<int> quantity;
  final List<double> price;

  const Invoice(
      {this.name = const [], required this.quantity, required this.price});
}
