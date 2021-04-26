import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/home/home.dart';
import 'package:wood_band/src/pages/members/members.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Special Elite',
            ),
        canvasColor: Colors.black87,
      ),
      home: Home(),
    );
  }
}
