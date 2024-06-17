import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/home_pembahasan_view.dart';

class HomePembahasanController extends State<HomePembahasanView> {
  static late HomePembahasanController instance;
  late HomePembahasanView view;

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
