import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/hasil_uji_kemampuan_view.dart';

class HasilUjiKemampuanController extends State<HasilUjiKemampuanView> {
  static late HasilUjiKemampuanController instance;
  late HasilUjiKemampuanView view;

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
