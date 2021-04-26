import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  SocialLinks({
    Key? key,
    this.textColor = Colors.white,
    this.textSize = 20.0,
    this.iconColor = Colors.white,
    this.iconSize = 20.0,
  }) : super(key: key);
  final Color textColor;
  final double textSize;
  final Color iconColor;
  final double iconSize;

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final String _urlYoutube = 'https://www.youtube.com/user/Timily555/videos';
    final String _urlFb = 'https://www.facebook.com/thewood.mv';
    final String _urlInstagram = 'https://www.instagram.com/thewood.mv/?hl=en';

    final Color _iconColor = iconColor;
    final double _iconSize = iconSize;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Follows Us',
          style: TextStyle(fontSize: textSize, color: textColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () async => await _launchURL(_urlYoutube),
              icon: Icon(
                FontAwesomeIcons.youtube,
                color: _iconColor,
                size: _iconSize,
              ),
            ),
            SizedBox(width: 12.0),
            IconButton(
              onPressed: () async => await _launchURL(_urlFb),
              icon: Icon(
                FontAwesomeIcons.facebook,
                color: _iconColor,
                size: _iconSize,
              ),
            ),
            SizedBox(width: 12.0),
            IconButton(
              onPressed: () async => await _launchURL(_urlInstagram),
              icon: Icon(
                FontAwesomeIcons.instagram,
                color: _iconColor,
                size: _iconSize,
              ),
            ),
            SizedBox(width: 12.0),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.twitter,
                color: _iconColor,
                size: _iconSize,
              ),
            ),
          ],
        )
      ],
    );
  }
}
