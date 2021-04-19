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
    return Container(
      // height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
      child: Card(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                        style: TextStyler.white().copyWith(
                            fontSize: 10.0, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio:',
                        style: TextStyler.white()
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release",
                        style: TextStyler.white()
                            .copyWith(letterSpacing: 1.0, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gear:',
                        style: TextStyler.white()
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style: TextStyler.white()
                            .copyWith(letterSpacing: 1.0, fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
