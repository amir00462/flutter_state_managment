// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/features/product/screens/product_list_screen.dart';
import 'package:flutter_state_managment/providers/product_provider.dart';
import 'package:provider/provider.dart';

// Use Provider StateManagment :
// 1. add Provider package to project
// 2. use MultiProvider as root
// 3. create Provider for each state
// 4. add providers created to multiprovider
// 5. use Provider.of -> when you do not need a rebuild in current ui
// 6. use Consumer -> when you need a rebuild in current ui

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
