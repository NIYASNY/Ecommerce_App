import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double prize;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.prize,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, prize, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2023/9/343712858/GH/CC/LZ/157566643/zoom-air-pink-football-shoes.jpg',
        prize: 3.99,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/z/l/f/5-thunder-black-5-5-spika-black-original-imaguxfzrwdgc77v.jpeg?q=90',
        prize: 2.88,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://5.imimg.com/data5/FY/TO/MY-29611757/football-boot.jpg',
        prize: 1.99,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEha7JQ3FLRkcQIHX67eoYB1Pn_9H78mRGTu4GseXvmo0h5AKXBS9i5lFb3gE6xxjvlWR9OvD9zoPzz7Mu0ip14G0u_0eBCH8kNW77DGnWeXFiEKLJxc3wNLDlqX0EFEX7Z0FZAYwvqQmK-_PCPow6l17HS2EcYdtbww8blZJDDh1gmRJMA9LX_OV4evhjhW/s1600/nike%20ready%20pack%20%284%29.jpg',
        prize: 4.22,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://lucasports.in/cwsd.php?Z3AuPTQ0Pg/NDQ/V1VWSkAoRUE8KTY_OTM8eScjPS1lfnE.jpg',
        prize: 2.77,
        isRecommended: true,
        isPopular: false)
  ];
}
