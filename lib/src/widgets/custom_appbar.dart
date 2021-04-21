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
      backgroundColor: Colors.black87,
      elevation: 8.0,
      title: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'W',
          style: TextStyle(
            fontFamily: 'Stick',
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            right: 14.0,
          ),
          child: Text(
            pageTitle ?? '',
            style: TextStyle(
              fontFamily: 'Stick',
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.0);
}
