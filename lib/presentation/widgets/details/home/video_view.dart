import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> with WidgetsBindingObserver {
  YoutubePlayerController?  _controller;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();

    onNewYoutubeVideo();
  }

  void onNewYoutubeVideo(){
    if(_controller != null){
      _controller?.dispose();
    }

    _controller = YoutubePlayerController(
      initialVideoId: 's4dBlDCw_2Q',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state){
      case AppLifecycleState.resumed:
        onNewYoutubeVideo();
        break;
      case AppLifecycleState.inactive:
        _controller?.pause();
        break;
      case AppLifecycleState.paused:
       _controller?.pause();
        break;
      case AppLifecycleState.detached:
        _controller?.dispose();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
        ),
        builder: (context, player) {
          return player;
        });
  }
}
