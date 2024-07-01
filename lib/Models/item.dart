import 'package:flutter/material.dart';

class Item {
  final String name;
  final int quantity;
  final double price;

  const Item({required this.name, required this.quantity, required this.price});

  double get subtotal => quantity * price;
}
