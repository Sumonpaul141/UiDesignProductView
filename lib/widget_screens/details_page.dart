import 'package:flutter/material.dart';
import 'package:flutteruiproductdesign/widget_screens/detailsBody.dart';
import 'package:flutteruiproductdesign/models/product.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(product : product),
    );
  }
}
