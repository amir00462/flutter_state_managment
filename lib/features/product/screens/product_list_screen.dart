// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_managment/features/product/models/product.dart';
import 'package:flutter_state_managment/features/product/widgets/product_tile.dart';
import 'package:flutter_state_managment/notifier/product_notifier.dart';
import 'package:provider/provider.dart';

// use
// Provider.of   ,   Consumer
// context.read() , context.watch()

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        itemCount: context.watch<ProductProvider>().products.length,
        itemBuilder: (context, index) {
          final product = context.watch<ProductProvider>().products[index];

          return ProductTile(
            product: product,
            onChanged: (value) {
              context.read<ProductProvider>().toggleProductSelection(product);
            },
          );
        },
      ),
    );
  }
}
