import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final Product product;
  const Productcard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
            Product.products[0].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 80,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 70,
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        '${Product.products[0].prize}',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        )
        // Positioned(
        //   top: 60,
        //   child: Container(
        //     width: MediaQuery.of(context).size.width / 2.5,
        //     height: 80,
        //     decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
        //   ),
        // ),
        // Positioned(
        //   top: 65,
        //   left: 5,
        //   child: Container(
        //     width: MediaQuery.of(context).size.width / 2.5 - 10,
        //     height: 70,
        //     decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
        //   ),
        // ),
      ],
    );
  }
}