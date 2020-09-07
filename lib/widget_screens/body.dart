import 'package:flutter/material.dart';
import 'package:flutteruiproductdesign/data/data.dart';
import 'header_with_search.dart';
import 'products_view.dart';
import 'title_with_more.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMore(title: "Recomended",),
          ProductsView(products: products,
          ),
          TitleWithMore(title: "Popular",),
          ProductsView(products: popular,
          ),
        ],
      ),
    );
  }
}
