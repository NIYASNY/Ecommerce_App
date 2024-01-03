import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:e_commerce_jersey_app/widgets/hero_carousal_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(),
    );
  }

  // final Product product;

  ProductScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      bottomNavigationBar: CustomNavbar(),
      // body: HeroCarousalCard(product: product,),
    );
  }
}
