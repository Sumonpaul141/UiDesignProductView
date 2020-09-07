import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            blurRadius: 35,
            color: Colors.red.withOpacity(0.20),
            offset: Offset(0, -20),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.image),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          ),

        ],
      ),
    );
  }
}
