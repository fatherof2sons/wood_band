import 'package:flutter/material.dart';
import 'package:wood_band/src/widgets/bottom_co.dart';
import 'package:wood_band/src/widgets/main_text.dart';
import 'package:wood_band/src/widgets/nav_links.dart';
import 'package:wood_band/src/widgets/social_links.dart';

class WebViewHome extends StatelessWidget {
  final String _image = 'assets/images/webwall.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(_image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.srgbToLinearGamma())),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: SelectableText(
                    'W',
                    style: TextStyle(fontSize: 40.0, color: Colors.white54),
                  ),
                ),
                NavLinks(),
              ],
            ),
            MainText(),
            Column(
              children: [
                SocialLinks(iconSize: 30.0, textSize: 16.0),
                SizedBox(height: 20.0),
                BottomCo(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
