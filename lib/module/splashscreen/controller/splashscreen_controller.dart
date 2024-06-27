import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class SplashscreenController extends State<SplashscreenView> {
  static late SplashscreenController instance;
  late SplashscreenView view;

  goToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(const HomeView());
  }

  @override
  void initState() {
    instance = this;
    goToHome();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
