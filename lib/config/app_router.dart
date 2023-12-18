import 'package:e_commerce_jersey_app/screens/cart/cart_screen.dart';
import 'package:e_commerce_jersey_app/screens/catalog/catalogscreen.dart';
import 'package:e_commerce_jersey_app/screens/home_screeen.dart';
import 'package:e_commerce_jersey_app/screens/product/product_screen.dart';
import 'package:e_commerce_jersey_app/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routname:
        return CartScreen.route();
      case WishlistScreen.routName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
            ));
  }
}
