import 'package:flutter/material.dart';

class AppViewMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 260.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/band.jpg'),
                    colorFilter: ColorFilter.srgbToLinearGamma()),
              ),
            ),
            _member(
              image: 'assets/images/ammadey.jpg',
              name: 'Ammadey',
              position: 'Lead Singer / Guitars / Percussion',
            ),
            _member(
              image: 'assets/images/chippe.jpg',
              name: 'Chippe',
              position: 'Lead Guitars',
            ),
            _member(
              image: 'assets/images/hambe.jpg',
              name: 'Hambe',
              position: 'Rhythm Guitars',
            ),
            _member(
              image: 'assets/images/mode.jpg',
              name: 'Mo',
              position: 'Bass Guitars',
            ),
            _member(
              image: 'assets/images/zahil.jpg',
              name: 'Zahil',
              position: 'Keyboards',
            ),
            _member(
              image: 'assets/images/azeen.jpg',
              name: 'Azeen',
              position: 'Drums',
            ),
          ],
        ),
      ),
    );
  }

  Widget _member({
    String? image,
    String? name,
    String? position,
  }) {
    final TextStyle _style = TextStyle(color: Colors.white);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(
                    width: 70.0,
                    image: AssetImage(image ?? ''),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name ?? 'Name',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(position ?? 'Postion',
                        style: TextStyle(color: Colors.white, fontSize: 12.0)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen boo",
            style: TextStyle(color: Colors.white, height: 1.2, fontSize: 16.0),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Divider(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
