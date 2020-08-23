import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;

  const CustomIconButton({
    Key key,
    @required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            color: Colors.red.withOpacity(0.20),
            blurRadius: 20.0),
        BoxShadow(
            offset: Offset(-20, -20),
            color: Colors.white.withOpacity(0.20),
            blurRadius: 20.0)
      ]),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.red,
        ),
      ),
    );
  }
}
