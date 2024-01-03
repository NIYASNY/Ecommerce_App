import 'package:equatable/equatable.dart';

class Categery extends Equatable {
  final String name;
  final String imageUrl;

  const Categery({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Categery> categories = [
    Categery(
        name: 'Jersey',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
    Categery(
        name: 'Jersey',
        imageUrl:
            'https://www.thesportstuff.in/cdn/shop/products/Sword_1024x1024@2x.jpg?v=1609498934'),
    Categery(
        name: 'Jersey',
        imageUrl:
            'https://static.wixstatic.com/media/c02b09_3c60320d63ec423589a190fc5bc882b2~mv2.jpg/v1/fit/w_500,h_500,q_90/file.jpg'),
    Categery(
        name: 'Soft Drink',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
    Categery(
        name: 'Soft Drink',
        imageUrl:
            'https://i.pinimg.com/736x/d1/bd/d0/d1bdd078f6dc3e0fb9407c4aa18db1cd.jpg'),
  ];
}
