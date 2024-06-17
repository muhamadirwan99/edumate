import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/detail_pembahasan_controller.dart';

class DetailPembahasanView extends StatefulWidget {
  const DetailPembahasanView({Key? key}) : super(key: key);

  Widget build(context, DetailPembahasanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailPembahasan"),
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
  State<DetailPembahasanView> createState() => DetailPembahasanController();
}
