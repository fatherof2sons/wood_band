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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              _buildMembersColumn(context),
              Divider(),
              _buildMembersColumn(context),
              Divider(),
              _buildMembersColumn(context),
              Divider(),
              _buildMembersColumn(context),
              Divider(),
              _buildMembersColumn(context),
              Divider(),
              _buildMembersColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMembersColumn(BuildContext context) {
    return Card(
      color: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60.0,
                  child: Placeholder(
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(width: 15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _memberInfo(),
                    SizedBox(height: 24.0),
                    _memberInfo(title: 'Gear', sub: '- Instrument'),
                  ],
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                _memberBio(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _memberInfo({String? title, String? sub}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'Member Name',
          style: TextStyler.white().copyWith(fontSize: 16.0),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            sub ?? '- Position',
            textAlign: TextAlign.left,
            style: TextStyler.white()
                .copyWith(fontSize: 10.0, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }

  Widget _memberBio({String? bio}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bio:',
          style: TextStyler.white().copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.0),
        Text(
          bio ??
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release",
          style:
              TextStyler.white().copyWith(letterSpacing: 1.0, fontSize: 12.0),
        ),
      ],
    );
  }
}
