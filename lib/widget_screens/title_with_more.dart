import 'package:flutter/material.dart';

class TitleWithMore extends StatelessWidget {
  final String title;

  const TitleWithMore({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          FlatButton(
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              print("more");
            },
            color: Colors.green,
            child: Text(
              "more",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
