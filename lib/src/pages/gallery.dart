import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class Gallery extends StatelessWidget {
  static String id = 'Gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: Center(
        child: Text(
          'Gallery Page',
          style: TextStyler.white(),
        ),
      ),
    );
  }
}
