import 'package:e_commerce_jersey_app/screens/model/category_model.dart';
import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:e_commerce_jersey_app/widgets/productcard.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Categery categery}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: categery,),
    );
  }

  final Categery category;

  const CatalogScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      bottomNavigationBar: CustomNavbar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: categoryProduct.length,
          itemBuilder: (BuildContext, int index) {
            return Center(
              child: Productcard(product: categoryProduct[index]),
              widthFactor: 2.2,
            );
          }),
    );
  }
}
