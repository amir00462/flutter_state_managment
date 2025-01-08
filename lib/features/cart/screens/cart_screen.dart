// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/features/product/models/product.dart';
import 'package:flutter_state_managment/notifier/product_notifier.dart';
import 'package:provider/provider.dart';

class CartScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(productNotifier.select(
      (state) => state
          .where(
            (product) => product.isSelected,
          )
          .toList(),
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: product.color,
                    child: Text(product.name[0]),
                  ),
                  title: Text(product.name),
                  subtitle: Text(product.description),
                  trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                );
              },
            ),
    );
  }
}
