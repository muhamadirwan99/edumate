import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/home_video_view.dart';

class HomeVideoController extends State<HomeVideoView> {
  static late HomeVideoController instance;
  late HomeVideoView view;

  List<VideoModel> listVideoModel = [
    const VideoModel(
      kdVideo: "1",
      title:
          "Mengenal dan Menentukan Sisi, Sudut, dan Titik Sudut Bangun Datar",
      author: "@fitriahastuti6199",
      thumbnail: "assets/images/video/thumbnail/thumbnail_1.png",
      idYt: "PIdOXSZtILY",
      bgColor: Color(0xffFFE4BB),
      decorationColor: Color(0xffEFB357),
    ),
    const VideoModel(
      kdVideo: "2",
      title: "Nama Dan Bentuk Bangun Datar",
      author: "@BundaZoya14",
      thumbnail: "assets/images/video/thumbnail/thumbnail_2.png",
      idYt: "rfDMcFdk_YI",
      bgColor: Color(0xffFFD6D6),
      decorationColor: Color(0xffD04848),
    ),
    const VideoModel(
      kdVideo: "3",
      title: "BELAJAR MENGENAL BANGUN DATAR",
      author: "@alfariqchannel804",
      thumbnail: "assets/images/video/thumbnail/thumbnail_3.png",
      idYt: "lhsvjtYUwcc",
      bgColor: Color(0xffC4FFFF),
      decorationColor: Color(0xff63A7A7),
    ),
    const VideoModel(
      kdVideo: "4",
      title: "Simetri Lipat Bangun datar",
      author: "@EroKusnara",
      thumbnail: "assets/images/video/thumbnail/thumbnail_4.png",
      idYt: "bOrJb7wc3n4",
      bgColor: Color(0xffE8FFD6),
      decorationColor: Color(0xffC3FF93),
    ),
    const VideoModel(
      kdVideo: "5",
      title: "Macam-Macam Bangun Datar dan Rumusnya __ Matematika SD",
      author: "@BelajarChannel1",
      thumbnail: "assets/images/video/thumbnail/thumbnail_5.png",
      idYt: "1ENevf_mFRs",
      bgColor: Color(0xffDFE0FF),
      decorationColor: Color(0xff9EA1D4),
    ),
  ];

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class VideoModel {
  final String kdVideo;
  final String title;
  final String author;
  final String thumbnail;
  final String idYt;
  final Color bgColor;
  final Color decorationColor;

  const VideoModel({
    required this.kdVideo,
    required this.title,
    required this.author,
    required this.thumbnail,
    required this.idYt,
    required this.bgColor,
    required this.decorationColor,
  });
}
