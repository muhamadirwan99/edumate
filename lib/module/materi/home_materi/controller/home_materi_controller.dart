import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/home_materi_view.dart';

class HomeMateriController extends State<HomeMateriView> {
  static late HomeMateriController instance;
  late HomeMateriView view;

  List<List<MateriModel>> materiAssets = [
    [
      MateriModel(
        kdMateri: "persegi_panjang",
        assets: "assets/images/materi/persegi_panjang.svg",
      ),
      MateriModel(
        kdMateri: "persegi",
        assets: "assets/images/materi/persegi.svg",
      ),
    ],
    [
      MateriModel(
        kdMateri: "trapesium",
        assets: "assets/images/materi/trapesium.svg",
      ),
      MateriModel(
        kdMateri: "jajar_genjang",
        assets: "assets/images/materi/jajar_genjang.svg",
      ),
    ],
    [
      MateriModel(
        kdMateri: "belah_ketupat",
        assets: "assets/images/materi/belah_ketupat.svg",
      ),
      MateriModel(
        kdMateri: "layang_layang",
        assets: "assets/images/materi/layang_layang.svg",
      ),
    ],
    [
      MateriModel(
        kdMateri: "lingkaran",
        assets: "assets/images/materi/lingkaran.svg",
      ),
      MateriModel(
        kdMateri: "segitiga",
        assets: "assets/images/materi/segitiga.svg",
      ),
    ],
  ];

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

class MateriModel {
  final String kdMateri;
  final String assets;

  MateriModel({
    required this.kdMateri,
    required this.assets,
  });
}
