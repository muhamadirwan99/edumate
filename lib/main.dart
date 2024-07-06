import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        // return MediaQuery(
        //   data: MediaQuery.of(context)
        //       .copyWith(textScaler: const TextScaler.linear(1.0)),
        //   child: child!,
        // );
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) {
                return ScreenSizeTest(
                  child: child,
                );
              },
            ),
          ],
        );
      },
      title: 'Edumate',
      navigatorKey: Get.navigatorKey,
      theme: themeData,
      home: const SplashscreenView(),
    );
  }
}
