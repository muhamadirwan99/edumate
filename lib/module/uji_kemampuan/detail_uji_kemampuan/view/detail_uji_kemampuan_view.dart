import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/detail_uji_kemampuan_controller.dart';

class DetailUjiKemampuanView extends StatefulWidget {
  const DetailUjiKemampuanView({Key? key}) : super(key: key);

  Widget build(context, DetailUjiKemampuanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailUjiKemampuan"),
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
  State<DetailUjiKemampuanView> createState() => DetailUjiKemampuanController();
}
