import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/home/app_view_home.dart';
import 'package:wood_band/src/pages/home/web_view_home.dart';
import 'package:wood_band/src/widgets/layout.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      buildAppVersion: AppViewHome(),
      buildWebVersion: WebViewHome(),
    );
  }
}
