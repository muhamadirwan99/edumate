import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/detail_video_view.dart';

class DetailVideoController extends State<DetailVideoView> {
  static late DetailVideoController instance;
  late DetailVideoView view;

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
