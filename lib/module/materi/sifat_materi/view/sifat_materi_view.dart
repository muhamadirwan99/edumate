import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/sifat_materi_controller.dart';

class SifatMateriView extends StatefulWidget {
  final String kdMateri;

  const SifatMateriView({
    super.key,
    required this.kdMateri,
  });

  Widget build(context, SifatMateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SifatMateri"),
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
  State<SifatMateriView> createState() => SifatMateriController();
}
