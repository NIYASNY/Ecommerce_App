import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static const String routName = '/wishlist';

  const WishlistScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wishlist'),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
