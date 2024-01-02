import 'package:e_commerce_jersey_app/screens/model/category_model.dart';
import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Categery categery}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(categery: categery));
  }

  final Categery categery;

  const CatalogScreen({required this.categery});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categery.name),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
