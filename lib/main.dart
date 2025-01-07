// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/features/product/screens/product_list_screen.dart';
import 'package:flutter_state_managment/providers/product_provider.dart';
import 'package:provider/provider.dart';

// Use Provider StateManagment (way 2) :
// 1. add Provider package to project
// 2. use MultiProvider as root
// 3. create Provider for each state
// 4. add providers created to multiprovider
// 5. use context.watch -> listen to changes
// 6. use context.read  -> get value of now , call a function

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductListScreen(),
      ),
    );
  }
}
