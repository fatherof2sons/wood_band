import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class BandLineup extends StatelessWidget {
  static String id = 'Band Line-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: id),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 80.0),
              _buildMembersColumn(),
              Divider(),
              _buildMembersColumn(),
              Divider(),
              _buildMembersColumn(),
              Divider(),
              _buildMembersColumn(),
              Divider(),
              _buildMembersColumn(),
              Divider(),
              _buildMembersColumn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMembersColumn() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 60.0,
                child: Placeholder(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Member Name',
                    style: TextStyler.white().copyWith(fontSize: 16.0),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    '- Position',
                    textAlign: TextAlign.left,
                    style: TextStyler.white()
                        .copyWith(fontSize: 10.0, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bio:\n',
                  style: TextStyler.white(),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release",
                  style: TextStyler.white(),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Equipment:\n',
                  style: TextStyler.white(),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyler.white(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
