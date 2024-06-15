import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/image_materi_controller.dart';

class ImageMateriView extends StatefulWidget {
  final String kdMateri;

  const ImageMateriView({
    super.key,
    required this.kdMateri,
  });

  Widget build(context, ImageMateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageMateri"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ImageMateriView> createState() => ImageMateriController();
}
