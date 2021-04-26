import 'package:flutter/material.dart';
import 'package:wood_band/src/widgets/layout.dart';

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(buildAppVersion: _appText(), buildWebVersion: _webText());
  }

  Widget _appText() {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/title.png'))),
    );
  }

  Widget _webText() {
    return Column(
      children: [
        SelectableText(
          'The',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        SelectableText(
          'Wood',
          style: TextStyle(fontSize: 140.0, color: Colors.white),
        ),
      ],
    );
  }
}
