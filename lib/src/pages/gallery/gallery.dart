import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  static String id = 'Gallery';

  final List<String> _images = [
    'assets/images/image01.jpg',
    'assets/images/image02.jpg',
    'assets/images/image03.jpg',
    'assets/images/image04.jpg',
    'assets/images/image05.jpg',
    'assets/images/image06.jpg',
    'assets/images/image07.jpg',
    'assets/images/image08.jpg',
    'assets/images/image09.jpg',
    'assets/images/image10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: _buildPhotos(context),
      ),
    );
  }

  Widget _buildPhotos(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      crossAxisSpacing: 3.0,
      mainAxisSpacing: 3.0,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(_images.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: GestureDetector(
            child: Hero(
              tag: index.toString(),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_images[index]),
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.saturation),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => Show(
                  img: _images[index],
                  index: index,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class Show extends StatelessWidget {
  const Show({
    Key? key,
    @required this.img,
    @required this.index,
  }) : super(key: key);
  final String? img;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Hero(
        tag: index.toString(),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$img'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}
