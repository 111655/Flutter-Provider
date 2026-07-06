import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/home_screen.dart';
import 'provider/product_provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Shopping App",
      home: HomeScreen(),
    );
  }
}