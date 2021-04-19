import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;
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
                  'The\nWood',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 80.0),
                ),
                SizedBox(height: 100.0),
              ],
            ),
          ),
          drawer: Drawer(
            elevation: 5.0,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildDrawerHeader(),
                SizedBox(height: 10.0),
                _buildPageList(
                  onTapLineup: () => _navigate(context, BandLineup()),
                  onTapGallery: () => _navigate(context, Gallery()),
                  onTapContact: () => _navigate(context, Contact()),
                  onTapAbout: () => _navigate(context, About()),
                ),
                SizedBox(
                  height: isMobile ? 30.0 : 160.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Follow Us On',
                      style: TextStyler.white(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.youtube),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.facebook),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.instagram),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.twitter),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: isMobile ? 30.0 : 160.0),
                Text(
                  '©2021 Allrights Reserved.\nTheWoodBand.co',
                  textAlign: TextAlign.center,
                  style: TextStyler.white().copyWith(fontSize: 12.0),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  DrawerHeader _buildDrawerHeader() {
    return DrawerHeader(
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
    );
  }

  Column _buildPageList({
    void Function()? onTapLineup,
    void Function()? onTapGallery,
    void Function()? onTapContact,
    void Function()? onTapAbout,
  }) {
    return Column(
      children: [
        ListTile(
            title: Text('Band Line-up', style: TextStyler.white()),
            onTap: onTapLineup),
        ListTile(
            title: Text('Gallery', style: TextStyler.white()),
            onTap: onTapGallery),
        ListTile(
            title: Text('Contact', style: TextStyler.white()),
            onTap: onTapContact),
        ListTile(
            title: Text('About', style: TextStyler.white()), onTap: onTapAbout),
      ],
    );
  }
}
