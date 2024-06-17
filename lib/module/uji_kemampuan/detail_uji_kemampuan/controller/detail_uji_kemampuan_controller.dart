import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/detail_uji_kemampuan_view.dart';

class DetailUjiKemampuanController extends State<DetailUjiKemampuanView> {
  static late DetailUjiKemampuanController instance;
  late DetailUjiKemampuanView view;

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
