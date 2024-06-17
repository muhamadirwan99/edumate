import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/hasil_uji_kemampuan_controller.dart';

class HasilUjiKemampuanView extends StatefulWidget {
  const HasilUjiKemampuanView({Key? key}) : super(key: key);

  Widget build(context, HasilUjiKemampuanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HasilUjiKemampuan"),
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
  State<HasilUjiKemampuanView> createState() => HasilUjiKemampuanController();
}
