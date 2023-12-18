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
            'https://5.imimg.com/data5/SELLER/Default/2023/9/343712858/GH/CC/LZ/157566643/zoom-air-pink-football-shoes.jpg',
        prize: 3.99,
        isRecommended: true,
        isPopular: false),
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
            'https://5.imimg.com/data5/SELLER/Default/2023/9/343712858/GH/CC/LZ/157566643/zoom-air-pink-football-shoes.jpg',
        prize: 3.99,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Boots',
        category: 'Jersey Section',
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2023/9/343712858/GH/CC/LZ/157566643/zoom-air-pink-football-shoes.jpg',
        prize: 3.99,
        isRecommended: true,
        isPopular: false)
  ];
}
