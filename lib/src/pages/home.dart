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
        return _buildContent(
          appBar: isMobile
              ? CustomAppbar(pageTitle: '')
              : AppBar(
                  title: Text(
                    'W',
                    style: TextStyle(
                      fontFamily: 'Stick',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    TextButton(
                        child: Text('Band Line-up', style: TextStyler.white()),
                        onPressed: () => _navigate(context, BandLineup())),
                    TextButton(
                        child: Text('Gallery', style: TextStyler.white()),
                        onPressed: () => _navigate(context, Gallery())),
                    TextButton(
                        child: Text('Contact', style: TextStyler.white()),
                        onPressed: () => _navigate(context, Contact())),
                    TextButton(
                        child: Text('About', style: TextStyler.white()),
                        onPressed: () => _navigate(context, About())),
                  ],
                ),
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black87,
          ),
          pageBodyWidth: MediaQuery.of(context).size.width,
          backgroundImage: 'assets/images/wall.jpg',
          boxFit: BoxFit.cover,
          mainTextFontfamily: 'Special Elite',
          mainTextAlign: TextAlign.left,
          mainTextColor: Colors.white,
          mainTextFontsize: 100.0,
          heightBetweenPagesAndFollowUs: 30.0,
          heightBetweenFollowUsAndBottomText: 30.0,
          onTapBandMembersPage: () => _navigate(context, BandLineup()),
          onTapGalleryPage: () => _navigate(context, Gallery()),
          onTapContactPage: () => _navigate(context, Contact()),
          onTapAboutPage: () => _navigate(context, About()),
          onTapIconYoutube: () {},
          onTapIconFb: () {},
          onTapIconInstagram: () {},
          onTapIconTwitter: () {},
        );
      },
    );
  }

  Widget _buildContent({
    ThemeData? data,
    @required double? pageBodyWidth,
    @required BoxFit? boxFit,
    @required String? backgroundImage,
    PreferredSizeWidget? appBar,
    MainAxisAlignment? parentColmainAxisAlignment,
    MainAxisSize? parentColMainAxisSize,
    @required TextAlign? mainTextAlign,
    @required String? mainTextFontfamily,
    @required Color? mainTextColor,
    @required double? mainTextFontsize,
    @required double? heightBetweenPagesAndFollowUs,
    @required double? heightBetweenFollowUsAndBottomText,
    @required void Function()? onTapBandMembersPage,
    @required void Function()? onTapGalleryPage,
    @required void Function()? onTapContactPage,
    @required void Function()? onTapAboutPage,
    @required void Function()? onTapIconYoutube,
    @required void Function()? onTapIconFb,
    @required void Function()? onTapIconInstagram,
    @required void Function()? onTapIconTwitter,
  }) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: Container(
        width: pageBodyWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage ?? 'assets/images/wall.jpg'),
            alignment: Alignment.topCenter,
            fit: boxFit,
            colorFilter: ColorFilter.srgbToLinearGamma(),
          ),
        ),
        child: Column(
          mainAxisSize: parentColMainAxisSize ?? MainAxisSize.max,
          mainAxisAlignment:
              parentColmainAxisAlignment ?? MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The',
                  textAlign: mainTextAlign,
                  style: TextStyle(
                    color: mainTextColor,
                    fontSize: 18.0,
                    fontFamily: mainTextFontfamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(height: 40.0),
                Text(
                  'Wood',
                  textAlign: mainTextAlign,
                  style: TextStyle(
                    color: mainTextColor,
                    fontSize: mainTextFontsize,
                    fontFamily: mainTextFontfamily,
                    fontWeight: FontWeight.bold,
                    height: 0.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 140.0),
          ],
        ),
      ),
      drawer: Theme(
        data: data ?? ThemeData(),
        child: Drawer(
          elevation: 5.0,
          child: ListView(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildDrawerHeader(
                onTapIconFb: onTapIconFb,
                onTapIconInstagram: onTapIconInstagram,
                onTapIconTwitter: onTapIconTwitter,
                onTapIconYoutube: onTapIconYoutube,
              ),
              SizedBox(height: 10.0),
              _buildPageList(
                onTapLineup: onTapBandMembersPage,
                onTapGallery: onTapGalleryPage,
                onTapContact: onTapContactPage,
                onTapAbout: onTapAboutPage,
              ),
              SizedBox(
                height: heightBetweenPagesAndFollowUs,
              ),
              SizedBox(height: heightBetweenFollowUsAndBottomText),
              Text(
                '©2021 Allrights Reserved.\nTheWoodBand.co',
                textAlign: TextAlign.center,
                style: TextStyler.white().copyWith(fontSize: 12.0),
              )
            ],
          ),
        ),
      ),
    );
  }

  DrawerHeader _buildDrawerHeader({
    @required void Function()? onTapIconYoutube,
    @required void Function()? onTapIconFb,
    @required void Function()? onTapIconInstagram,
    @required void Function()? onTapIconTwitter,
  }) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Follow Us On',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onTapIconYoutube,
                        icon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        onPressed: onTapIconFb,
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        onPressed: onTapIconInstagram,
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        onPressed: onTapIconTwitter,
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
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
