import 'package:flutter/material.dart';
import 'body.dart';
import 'bottom_nav.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
