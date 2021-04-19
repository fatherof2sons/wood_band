import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class BandLineup extends StatelessWidget {
  static String id = 'Band Line-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: Center(
        child: Text(
          'Band Line-up Page',
          style: TextStyler.white(),
        ),
      ),
    );
  }
}
