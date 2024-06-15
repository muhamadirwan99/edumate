import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/rumus_materi_view.dart';

class RumusMateriController extends State<RumusMateriView> {
  static late RumusMateriController instance;
  late RumusMateriView view;

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
