import 'package:flutter/material.dart';
import 'package:hello_world/Models/item.dart';
// models.dart

class Invoice {
  final List<Item> _items;
  final String date;

  const Invoice({
    required this.date,
    List<Item> items = const [],
  }) : _items = items;

  List<Item> get items => _items;
}
