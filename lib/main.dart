import 'package:edumate/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }

  mainStorage = await Hive.openBox('mainStorage');

  PembahasanDatabase.load();

  PembahasanDatabase.kdPembahasan = mainStorage.get("kdPembahasan") ?? "";

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
        // return Overlay(
        //   initialEntries: [
        //     OverlayEntry(
        //       builder: (context) {
        //         return ScreenSizeTest(
        //           child: child,
        //         );
        //       },
        //     ),
        //   ],
        // );
      },
      title: 'Edumate',
      navigatorKey: Get.navigatorKey,
      theme: themeData,
      home: const SplashscreenView(),
    );
  }
}
