import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  static String id = 'Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: _buildForm(),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow Us On',
                  style: TextStyler.white(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.youtube),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.instagram),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.twitter),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Write Us',
            style: TextStyler.white().copyWith(fontSize: 20.0),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'From:',
              labelStyle: TextStyle(color: Colors.black87),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)))),
        ),
        SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
              labelText: 'Senders Contact:',
              labelStyle: TextStyle(color: Colors.black87),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)))),
        ),
        SizedBox(height: 16.0),
        TextField(
          maxLines: 8,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            labelText: "Enter your message here:",
            labelStyle: TextStyle(color: Colors.black87),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        SizedBox(height: 16.0),
        MaterialButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('Send'),
          ),
          color: Colors.black26,
        )
      ],
    );
  }
}
