import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBackButton extends StatelessWidget {
  CustomBackButton({Key? key, this.pageName = ''}) : super(key: key);
  final String pageName;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 18.0, color: Colors.white);
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                (FontAwesomeIcons.arrowAltCircleLeft),
              ),
              SizedBox(width: 4.0),
              Text(
                'Back',
                style: style,
              )
            ],
          ),
          Text(pageName, style: style),
        ],
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}
