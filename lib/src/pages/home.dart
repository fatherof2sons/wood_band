import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wood',
          style: TextStyle(fontFamily: 'Special Elite'),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wall.jpg'),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Text'),
                Text('Text'),
              ],
            ),
            SizedBox(
              height: 120.0,
            ),
            Text(
              'The\nWood\nBand',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 60.0),
            )
          ],
        ),
      ),
    );
  }
}
