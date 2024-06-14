import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  Widget build(context, SplashscreenController controller) {
    controller.view = this;

    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(
              "assets/images/logo/edumate.svg",
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Center(
            child: SvgPicture.asset(
              "assets/images/logo/text_edumate.svg",
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
