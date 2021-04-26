import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wood_band/src/widgets/bottom_co.dart';
import 'package:wood_band/src/widgets/main_text.dart';
import 'package:wood_band/src/widgets/nav_links.dart';
import 'package:wood_band/src/widgets/social_links.dart';

class AppViewHome extends StatefulWidget {
  @override
  _AppViewHomeState createState() => _AppViewHomeState();
}

class _AppViewHomeState extends State<AppViewHome> {
  final String _image = 'assets/images/wall.jpg';

  bool isPlaying = false;
  IconData playBtn = FontAwesomeIcons.play;

  AudioPlayer? _player;
  AudioCache? _cache;

  Duration position = Duration();
  Duration musicLength = Duration();

  // Widget _slider() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 90.0),
  //     child: Slider.adaptive(
  //       inactiveColor: Colors.grey[600],
  //       activeColor: Colors.grey[350],
  //       value: position.inSeconds.toDouble(),
  //       max: musicLength.inSeconds.toDouble(),
  //       onChanged: _seekToSec,
  //     ),
  //   );
  // }

  // void _seekToSec(double value) {
  //   Duration newPos = Duration(seconds: value.toInt());
  //   _player?.seek(newPos);
  // }

  @override
  void initState() {
    super.initState();
    initializing();
  }

  void initializing() async {
    _player = AudioPlayer();
    _cache = AudioCache(fixedPlayer: _player);

    _player?.onDurationChanged.listen((d) {
      setState(() => musicLength = d);
    });
    _player?.onAudioPositionChanged.listen((d) {
      setState(() => position = d);
    });

    _cache?.load('band_song.mp3');
    // _cache?.loop('band_song.mp3');
  }

  void _play() {
    if (!isPlaying) {
      _cache?.loop('band_song.mp3');
      setState(() {
        playBtn = FontAwesomeIcons.pause;
        isPlaying = true;
      });
    } else {
      _player?.pause();
      setState(() {
        playBtn = FontAwesomeIcons.play;
        isPlaying = false;
      });
    }
  }

  Widget text() {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Special Elite',
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText('The Wood Live At'),
            RotateAnimatedText('Bandos Maldives 2019'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
        actions: [
          isPlaying ? text() : Container(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 32.0, bottom: 42.0),
        child: FloatingActionButton(
          onPressed: _play,
          backgroundColor: Colors.grey[200],
          child: Center(
            child: Icon(
              playBtn,
              size: 20.0,
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_image),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma(),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.0, top: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainText(),
              BottomCo(),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    SocialLinks(
                      iconColor: Colors.black87,
                      textColor: Colors.black87,
                      iconSize: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 16.0),
              child: NavLinks(fontSize: 18.0),
            ),
            SizedBox(height: 60.0),
            BottomCo(),
          ],
        ),
      ),
    );
  }
}
