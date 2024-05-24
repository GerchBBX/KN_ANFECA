// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaPage extends StatefulWidget {
  @override
  _MediaPage createState() => _MediaPage();
}


class _MediaPage extends State<MediaPage> {
  final List<String> _videoIds = [
    'AN52PgDGtu0',
    'lwupH1XHgDI',
    'fyCYOy0ICDc',
    'FWp8qcRLUdc',
    'w-fCdm_e_m8',
    '6WHt4_uPuH8',
    
  ];

  final Map<String, YoutubePlayerController> _controllers = {};

  @override
  void initState() {
    super.initState();
    for (var id in _videoIds) {
      _controllers[id] = YoutubePlayerController(
        initialVideoId: id,
        flags: YoutubePlayerFlags(
          autoPlay: false, // Deshabilita la reproducción automática
          mute: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD0FBDA),
                    Color(0xFFD0E5F4),
                  ],
                ),
              ),
        child: ListView.builder(
          itemCount: _videoIds.length,
          itemBuilder: (context, index) {
            String videoId = _videoIds[index];
            return Column(
              children: [
                SizedBox(height: 16.0),
                Stack(
                  children: [
                    _buildVideoPlayer(videoId),
                    _buildControlButtons(videoId),
                  ],
                ),
                SizedBox(height: 16.0),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(String videoId) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: YoutubePlayer(
          controller: _controllers[videoId]!,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red, // Cambia el color del indicador de progreso
          progressColors: ProgressBarColors(
            playedColor: Colors.red, // Cambia el color de la barra de progreso reproducida
            handleColor: Colors.redAccent, // Cambia el color del mango de la barra de progreso
          ),
        ),
      ),
    );
  }

  Widget _buildControlButtons(String videoId) {
    return Positioned(
      bottom: 8.0,
      left: 8.0,
      child: IconButton(
        icon: Icon(
          _controllers[videoId]?.value.isPlaying ?? false ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            if (_controllers[videoId]?.value.isPlaying ?? false) {
              _controllers[videoId]?.pause();
            } else {
              _controllers[videoId]?.play();
            }
          });
        },
      ),
    );
  }
}