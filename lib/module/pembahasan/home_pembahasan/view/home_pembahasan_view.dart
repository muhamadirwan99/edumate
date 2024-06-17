import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../controller/home_pembahasan_controller.dart';

class HomePembahasanView extends StatefulWidget {
  const HomePembahasanView({Key? key}) : super(key: key);

  Widget build(context, HomePembahasanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePembahasan"),
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
  State<HomePembahasanView> createState() => HomePembahasanController();
}
