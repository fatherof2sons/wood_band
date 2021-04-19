import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class About extends StatelessWidget {
  static String id = 'About';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: Center(
        child: Text(
          'About Page',
          style: TextStyler.white(),
        ),
      ),
    );
  }
}
