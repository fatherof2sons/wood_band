import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({
    Key? key,
    @required this.pageTitle,
  }) : super(key: key);
  final String? pageTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 8.0,
      title: Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: Text(
          'W',
          style: TextStyle(
            fontFamily: 'Special Elite',
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
      actions: [Text(pageTitle ?? '')],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
