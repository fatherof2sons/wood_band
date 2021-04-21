import 'package:flutter/cupertino.dart';

class Layout extends StatelessWidget {
  Layout({
    Key? key,
    @required this.buildAppVersion,
    @required this.buildWebVersion,
  }) : super(key: key);
  final Widget? buildAppVersion;
  final Widget? buildWebVersion;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return buildWebVersion ?? Container();
      }
      return buildAppVersion ?? Container();
    });
  }
}
