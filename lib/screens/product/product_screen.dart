import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
