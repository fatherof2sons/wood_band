import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/members/app_view_members.dart';
import 'package:wood_band/src/pages/members/web_view_members.dart';
import 'package:wood_band/src/widgets/layout.dart';

class Members extends StatelessWidget {
  static String id = 'Band Members';

  @override
  Widget build(BuildContext context) {
    return Layout(
        buildAppVersion: AppViewMembers(), buildWebVersion: WebViewMembers());
  }
}
