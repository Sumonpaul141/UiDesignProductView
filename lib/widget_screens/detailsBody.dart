import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruiproductdesign/models/product.dart';
import 'custom_icon_button.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 60.0, top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        CustomIconButton(
                          icon: Icons.wb_sunny,
                        ),
                        CustomIconButton(
                          icon: Icons.settings_system_daydream,
                        ),
                        CustomIconButton(
                          icon: Icons.watch,
                        ),
                        CustomIconButton(
                          icon: Icons.beach_access,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          product.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            color: Colors.red.withOpacity(0.20),
                            blurRadius: 60.0)
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 15.0, right: 20.0, bottom: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.name,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                      Text(
                        product.location,
                        style: TextStyle(
                            color: Colors.blueGrey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  product.price,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width / 2,
                  height: 60.0,
                  child: FlatButton(
                    hoverColor: Colors.blue,
                    onPressed: () {},
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: 60.0,
                  child: FlatButton(
                    child: Text(
                      "Cart ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
