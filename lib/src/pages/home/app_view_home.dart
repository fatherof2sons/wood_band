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

  Widget _slider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: Slider.adaptive(
        inactiveColor: Colors.grey[600],
        activeColor: Colors.grey[350],
        value: position.inSeconds.toDouble(),
        max: musicLength.inSeconds.toDouble(),
        onChanged: _seekToSec,
      ),
    );
  }

  void _seekToSec(double value) {
    Duration newPos = Duration(seconds: value.toInt());
    _player?.seek(newPos);
  }

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
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
          padding: EdgeInsets.only(bottom: 80.0, top: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainText(),
              _audioPlayer(),
              // _audioPlayer(),
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

  Widget _audioPlayer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            !isPlaying
                ? 'Tap to Listen us Live'
                : 'Recorded live at\nBandos Maldives 2019',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
          ),
          SizedBox(height: 10.0),
          IconButton(
            onPressed: () {
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
            },
            icon: Icon(
              playBtn,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          SizedBox(height: 10.0),
          Opacity(opacity: !isPlaying ? 0.0 : 1.0, child: _slider())
        ],
      ),
    );
  }
}
