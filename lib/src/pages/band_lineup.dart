import 'package:flutter/material.dart';
import 'package:wood_band/src/services/textstyler.dart';
import 'package:wood_band/src/widgets/custom_appbar.dart';

class BandLineup extends StatelessWidget {
  static String id = 'Band Line-up';

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildChildren(
      BuildContext context,
      bool isMobile,
    ) {
      return [
        SizedBox(
          height: isMobile ? 30.0 : 60.0,
        ),
        _buildMembersColumn(context, isMobile),
        Divider(),
        _buildMembersColumn(context, isMobile),
        Divider(),
        _buildMembersColumn(context, isMobile),
        Divider(),
        _buildMembersColumn(context, isMobile),
        Divider(),
        _buildMembersColumn(context, isMobile),
        Divider(),
        _buildMembersColumn(context, isMobile),
      ];
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 600;
        final Color? scaffoldBgColor = isMobile ? Colors.black26 : Colors.white;

        return Scaffold(
          backgroundColor: scaffoldBgColor ?? Colors.grey,
          appBar: CustomAppbar(
            pageTitle: id,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: _buildChildren(context, isMobile),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMembersColumn(BuildContext context, bool isMobile) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 40.0 : 60.0,
        horizontal: isMobile ? 16.0 : 220.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: isMobile
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: isMobile ? 100.0 : 120.0,
                child: Placeholder(
                  color: Colors.grey.shade600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _memberInfo(isMobile: isMobile),
                    SizedBox(width: 14.0),
                    _memberInfo(
                        title: 'Gear', sub: '- Instrument', isMobile: isMobile),
                  ],
                ),
              ),
            ],
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              _memberBio(isMobile: isMobile),
            ],
          ),
        ],
      ),
    );
  }

  Widget _memberInfo({String? title, String? sub, bool? isMobile}) {
    bool mobileNotNull = isMobile ?? true;
    return Column(
      children: [
        Text(
          title ?? 'Member Name',
          style: TextStyler.white()
              .copyWith(fontSize: mobileNotNull ? 16.0 : 24.0),
        ),
        Text(
          sub ?? '- Position',
          style: TextStyler.white().copyWith(
              fontSize: mobileNotNull ? 10.0 : 16.0,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }

  Widget _memberBio({String? bio, bool? isMobile}) {
    bool mobileNotNull = isMobile ?? true;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: mobileNotNull ? 8.0 : 16.0,
        horizontal: mobileNotNull ? 4.0 : 60.0,
      ),
      child: Text(
        bio ??
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release",
        style: TextStyler.white().copyWith(
          letterSpacing: 1.0,
          fontSize: mobileNotNull ? 14.0 : 20.0,
          height: 1.3,
        ),
      ),
    );
  }
}
