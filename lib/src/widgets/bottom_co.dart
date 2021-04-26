import 'package:flutter/material.dart';

class BottomCo extends StatelessWidget {
  final time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '©${time.year} AllRights Reserved.\nTheWood.co',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 12.0),
      ),
    );
  }
}
