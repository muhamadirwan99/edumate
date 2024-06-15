import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/sifat_materi_view.dart';

class SifatMateriController extends State<SifatMateriView> {
  static late SifatMateriController instance;
  late SifatMateriView view;

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
