import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final Color color;
  bool isSelected;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    this.isSelected = false,
  });
}
