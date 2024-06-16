import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailVideoController extends State<DetailVideoView> {
  static late DetailVideoController instance;
  late DetailVideoView view;

  late YoutubePlayerController ytController;
  late PlayerState playerState;
  late YoutubeMetaData videoMetaData;
  late VideoModel selectedVideoModel;
  int index = 0;
  bool isPlaying = false;
  bool isPlayerReady = false;
  List<VideoModel> videoList = [];
  List<VideoModel> videoListFiltered = [];

  void switchVideo(VideoModel videoModel, VideoModel newVideoModel, index) {
    if (index != null) {
      VideoModel previousVideo = videoListFiltered.removeAt(index);
      videoListFiltered.insert(index!, previousVideo);
    }

    VideoModel selectedVideo = videoListFiltered.removeAt(index);

    videoListFiltered.insert(0, selectedVideo);

    update();
  }

  void listener() {
    if (isPlayerReady && mounted && !ytController.value.isFullScreen) {
      setState(() {
        playerState = ytController.value.playerState;
        videoMetaData = ytController.metadata;
      });
    }
  }

  @override
  void initState() {
    instance = this;
    selectedVideoModel = widget.videoModel;
    videoList = widget.videoList;
    videoListFiltered = widget.videoList;

    ytController = YoutubePlayerController(
      initialVideoId: widget.videoModel.idYt,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    videoMetaData = const YoutubeMetaData();
    playerState = PlayerState.unknown;
    super.initState();
  }

  @override
  void dispose() {
    ytController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
