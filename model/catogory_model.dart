import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Jersey',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
     Category(
        name: 'Jersey',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
     Category(
        name: 'Jersey',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
      Category(
        name: 'Jersey',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),                       
  ];
}
