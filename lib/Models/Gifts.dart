import 'package:flutter/material.dart';

class Gift {
  final String title;
  final String about;
  final String imageUrl;
  final String validFrom;
  final String status;

  const Gift({
    required this.title,
    required this.about,
    required this.imageUrl,
    required this.validFrom,
    required this.status,
  });
}
