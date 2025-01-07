// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/features/product/screens/product_list_screen.dart';
import 'package:flutter_state_managment/providers/product_provider.dart';
import 'package:provider/provider.dart';

// add provider :
// 1. use MultiProvider as root
// 2. create Provider for each state
// 3. add providers created to multiprovider
// 4. use (  )

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
