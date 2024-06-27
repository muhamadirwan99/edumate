import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/hasil_uji_kemampuan_view.dart';

class HasilUjiKemampuanController extends State<HasilUjiKemampuanView> {
  static late HasilUjiKemampuanController instance;
  late HasilUjiKemampuanView view;

  switchScore(String score) {
    if (score == "100" || score == "90") {
      return "Sangat Bagus!";
    } else if (score == "80" || score == "70") {
      return "Bagus!";
    } else if (score == "60" || score == "50") {
      return "Kurang Bagus!";
    } else {
      return "Ayo Belajar Lagi";
    }
  }

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
