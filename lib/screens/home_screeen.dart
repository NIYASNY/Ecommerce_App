import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_jersey_app/screens/model/product_model.dart';
import 'package:e_commerce_jersey_app/widgets/custom_navbar.dart';
import 'package:e_commerce_jersey_app/widgets/product_carousal.dart';
import 'package:e_commerce_jersey_app/widgets/productcard.dart';
import 'package:e_commerce_jersey_app/widgets/sectiontile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg',
      'https://www.thesportstuff.in/cdn/shop/products/Sword_1024x1024@2x.jpg?v=1609498934',
      'https://www.triumph-sports.com/wp-content/uploads/2021/04/CRKJerCha19-1-1.jpg',
      'https://static.wixstatic.com/media/c02b09_3c60320d63ec423589a190fc5bc882b2~mv2.jpg/v1/fit/w_500,h_500,q_90/file.jpg',
      'https://i2.wp.com/cdn.shopify.com/s/files/1/0014/3789/2697/products/C2_1024x1024.jpg?strip=all',
      'https://cdn.rointernational.in/wp-content/uploads/2020/11/18083829/HALF-SUBLI-DESIGNS-46-1-scaled.jpg'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/catalog', arguments: Category);
              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Prime kick',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/wishlist');
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      bottomNavigationBar: CustomNavbar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                viewportFraction: 0.9,
                aspectRatio: 1.5,
                enlargeCenterPage: true,
                initialPage: 2,
                autoPlay: true,
                enableInfiniteScroll: false,
              ),
            ),
          ),
          //...Product card...//
          Sectiontitle(title: 'RECOMMENDED'),
          ProductCarousal(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          Sectiontitle(title: 'Most Popular'),
          ProductCarousal(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList())
        ],
      ),
    );
  }
}
