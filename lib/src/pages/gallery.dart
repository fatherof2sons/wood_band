import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class Gallery extends StatelessWidget {
  static String id = 'Gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: _buildPhotos(context),
      ),
    );
  }

  Widget _buildPhotos(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(50, (index) {
        return Card(
          color: Colors.white,
          child: Center(
            child: Text(
              'photo $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        );
      }),
    );
  }
}
