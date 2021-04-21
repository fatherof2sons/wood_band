import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  static String id = 'Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: CustomAppbar(pageTitle: id),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildForm(),
            SizedBox(
              height: 20.0,
            ),
            _buildFollowUs(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    final TextStyle _labelStyle = TextStyle(
      color: Colors.black87,
      fontSize: 12.0,
    );

    final InputBorder _inputBorder = OutlineInputBorder(
        borderSide: BorderSide(
      color: Colors.black12,
      width: 2.0,
    ));
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Write Us',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'From:',
                    labelStyle: _labelStyle,
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: _inputBorder,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)))),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Senders Contact:',
                    labelStyle: _labelStyle,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: _inputBorder,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)))),
              ),
              SizedBox(height: 16.0),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  enabledBorder: _inputBorder,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  labelText: "Enter your message here:",
                  labelStyle: _labelStyle,
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
                color: Colors.black87,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFollowUs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Follow Us On',
          textAlign: TextAlign.center,
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
    );
  }
}
