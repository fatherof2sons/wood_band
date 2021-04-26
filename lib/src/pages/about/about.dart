import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/about/app_view_about.dart';
import 'package:wood_band/src/pages/about/web_view_about.dart';
import 'package:wood_band/src/widgets/layout.dart';

class About extends StatelessWidget {
  static String id = 'About';

  @override
  Widget build(BuildContext context) {
    return Layout(
        buildAppVersion: AppViewAbout(), buildWebVersion: WebViewAbout());
  }
}
