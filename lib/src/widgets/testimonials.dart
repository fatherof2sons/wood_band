import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  Testimonials({
    Key? key,
    @required this.comment,
    @required this.author,
  }) : super(key: key);
  final String? comment;
  final String? author;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            comment ?? '',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            author ?? '',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 10.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
