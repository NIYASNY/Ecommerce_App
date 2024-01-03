import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const String routname = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routname),
      builder: (_) => CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
