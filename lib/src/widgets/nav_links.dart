import 'package:flutter/material.dart';
import 'package:wood_band/src/pages/about/about.dart';
import 'package:wood_band/src/pages/members/members.dart';
import 'package:wood_band/src/pages/contact/contact.dart';
import 'package:wood_band/src/pages/gallery/gallery.dart';
import 'package:wood_band/src/widgets/layout.dart';

class NavLinks extends StatelessWidget {
  NavLinks({
    Key? key,
    this.fontSize = 20.0,
    this.textColor = Colors.white,
    this.mainAxis = CrossAxisAlignment.start,
  }) : super(key: key);
  final double fontSize;
  final Color textColor;
  final CrossAxisAlignment mainAxis;

  void _navigate(BuildContext context, Widget pageTo) =>
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => pageTo, fullscreenDialog: true),
      );

  @override
  Widget build(BuildContext context) {
    return Layout(
        buildAppVersion: _column(context), buildWebVersion: _row(context));
  }

  Widget _column(BuildContext context) {
    final ButtonStyle _style =
        ButtonStyle(foregroundColor: MaterialStateProperty.all(textColor));

    final TextStyle _fontsize = TextStyle(fontSize: fontSize);
    return Column(
      crossAxisAlignment: mainAxis,
      children: [
        TextButton(
          child: Text(
            'About',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, About()),
          style: _style,
        ),
        SizedBox(height: 20.0),
        TextButton(
          child: Text(
            'Band Members',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Members()),
          style: _style,
        ),
        SizedBox(height: 20.0),
        TextButton(
          child: Text(
            'Gallery',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Gallery()),
          style: _style,
        ),
        SizedBox(height: 20.0),
        TextButton(
          child: Text(
            'Contact',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Contact()),
          style: _style,
        ),
      ],
    );
  }

  Widget _row(BuildContext context) {
    final ButtonStyle _style =
        ButtonStyle(foregroundColor: MaterialStateProperty.all(textColor));

    final TextStyle _fontsize = TextStyle(fontSize: fontSize);
    return Row(
      crossAxisAlignment: mainAxis,
      children: [
        TextButton(
          child: Text(
            'About',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, About()),
          style: _style,
        ),
        SizedBox(width: 20.0),
        TextButton(
          child: Text(
            'Band Members',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Members()),
          style: _style,
        ),
        SizedBox(width: 20.0),
        TextButton(
          child: Text(
            'Gallery',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Gallery()),
          style: _style,
        ),
        SizedBox(width: 20.0),
        TextButton(
          child: Text(
            'Contact',
            style: _fontsize,
          ),
          onPressed: () => _navigate(context, Contact()),
          style: _style,
        ),
      ],
    );
  }
}
