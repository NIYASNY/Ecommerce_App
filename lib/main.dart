import 'package:e_commerce_jersey_app/screens/cart/cart_screen.dart';
import 'package:e_commerce_jersey_app/screens/catalog/catalogscreen.dart';
import 'package:e_commerce_jersey_app/screens/home_screeen.dart';
import 'package:e_commerce_jersey_app/screens/product/product_screen.dart';
import 'package:e_commerce_jersey_app/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/c' : (context) => const CatalogScreen(),
        '/product': (context) => const ProductScreen(),
        '/cart': (context) => const CartScreen(),
        '/wishlist': (context) => const WishlistScreen(),
      },
      home: HomeScreen(),
    );
  }
}
