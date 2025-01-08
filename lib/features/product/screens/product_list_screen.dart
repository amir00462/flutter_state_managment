// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_managment/features/product/widgets/product_tile.dart';
import 'package:flutter_state_managment/notifier/product_notifier.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends ConsumerWidget {
  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productNotifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductTile(
            product: product,
            onChanged: (value) {
              ref.read(productNotifier.notifier).toggleProductSelected(product);
            },
          );
        },
      ),
    );
  }
}
