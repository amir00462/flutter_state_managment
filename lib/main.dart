// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/features/product/models/product.dart';
import 'package:flutter_state_managment/features/product/screens/product_list_screen.dart';
import 'package:flutter_state_managment/notifier/product_notifier.dart';
import 'package:provider/provider.dart';

// Riverpod
// 1. flutter pub add flutter_riverpod
// 2. add ProviderScope to root
// 3. init Provider

// three type provider ->
// * StateProvider                      -> easy state      (int , String)
// * StateNofifierProvider              -> Complex state
// * FutureProvider                     -> rest api , async

// 4. use ref instead of context
// ref.read()     ref.watch()

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}
