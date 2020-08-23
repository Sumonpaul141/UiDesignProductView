import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String location;

  const Product({
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    @required this.location,
  });
}
