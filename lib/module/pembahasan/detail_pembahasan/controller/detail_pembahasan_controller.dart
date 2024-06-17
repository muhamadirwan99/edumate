import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/detail_pembahasan_view.dart';

class DetailPembahasanController extends State<DetailPembahasanView> {
  static late DetailPembahasanController instance;
  late DetailPembahasanView view;

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
