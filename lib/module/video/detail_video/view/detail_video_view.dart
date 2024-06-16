import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/detail_video_controller.dart';

class DetailVideoView extends StatefulWidget {
  const DetailVideoView({Key? key}) : super(key: key);

  Widget build(context, DetailVideoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailVideo"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailVideoView> createState() => DetailVideoController();
}
