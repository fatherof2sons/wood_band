import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/about.dart';
import 'package:wood_band/src/pages/band_lineup.dart';
import 'package:wood_band/src/pages/contact.dart';
import 'package:wood_band/src/pages/gallery.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class Home extends StatelessWidget {
  void _navigate(BuildContext context, Widget pageTo) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => pageTo, fullscreenDialog: true));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: ''),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wall.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'The\nWood\nBand',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 60.0),
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'The\nWood\nBand',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            ListTile(
              title: Text('Band Line-up', style: TextStyler.white()),
              onTap: () => _navigate(context, BandLineup()),
            ),
            ListTile(
              title: Text('Gallery', style: TextStyler.white()),
              onTap: () => _navigate(context, Gallery()),
            ),
            ListTile(
              title: Text('Contact', style: TextStyler.white()),
              onTap: () => _navigate(context, Contact()),
            ),
            ListTile(
              title: Text(
                'About',
                style: TextStyler.white(),
              ),
              onTap: () => _navigate(context, About()),
            ),
            SizedBox(height: 260.0),
            Text(
              '©2021 Allrights Reserved.\nTheWoodBand.co',
              textAlign: TextAlign.center,
              style: TextStyler.white().copyWith(fontSize: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
