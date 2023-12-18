import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:e_commerce_jersey_app/widgets/productcard.dart';
import 'package:flutter/material.dart';

class ProductCarousal extends StatelessWidget {
  final List<Product> products;
  const ProductCarousal({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Productcard(product:products[index]),
            );
          }),
    );
  }
}