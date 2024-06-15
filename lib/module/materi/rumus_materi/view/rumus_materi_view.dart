import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/rumus_materi_controller.dart';

class RumusMateriView extends StatefulWidget {
  final String kdMateri;

  const RumusMateriView({
    super.key,
    required this.kdMateri,
  });

  Widget build(context, RumusMateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RumusMateri"),
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
  State<RumusMateriView> createState() => RumusMateriController();
}
