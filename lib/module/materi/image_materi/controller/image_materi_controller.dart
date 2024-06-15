import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/image_materi_view.dart';

class ImageMateriController extends State<ImageMateriView> {
  static late ImageMateriController instance;
  late ImageMateriView view;

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
