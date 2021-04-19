import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/band_lineup.dart';
import 'package:wood_band/src/pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Special Elite',
            ),
      ),
      home: BandLineup(),
    );
  }
}
