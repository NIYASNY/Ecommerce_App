import 'package:e_commerce_jersey_app/screens/model/category_model.dart';
import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:e_commerce_jersey_app/widgets/productcard.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  // final Categery categery;

  const CatalogScreen();

  @override
  Widget build(BuildContext context) {
    // final List<Product> categoryProduct = Product.products
    //     .where((product) => product.category == categery.name)
    //     .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      bottomNavigationBar: CustomNavbar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: 3,
          itemBuilder: (BuildContext, int index) {
            return Center(
              child: Productcard(product: Product.products[0]),
              widthFactor: 2.2,
            );
          }),
    );
  }
}
