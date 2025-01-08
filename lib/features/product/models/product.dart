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

  Product copyWith({
    String? name,
    String? description,
    double? price,
    Color? color,
    bool? isSelected,
  }) {
    return Product(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      color: color ?? this.color,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
