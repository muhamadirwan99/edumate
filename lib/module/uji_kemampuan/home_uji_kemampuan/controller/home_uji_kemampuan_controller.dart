import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/home_uji_kemampuan_view.dart';

class HomeUjiKemampuanController extends State<HomeUjiKemampuanView> {
  static late HomeUjiKemampuanController instance;
  late HomeUjiKemampuanView view;

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
