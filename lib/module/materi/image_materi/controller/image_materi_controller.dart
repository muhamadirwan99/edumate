import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/image_materi_view.dart';

class ImageMateriController extends State<ImageMateriView> {
  static late ImageMateriController instance;
  late ImageMateriView view;

  String title = "";
  Color bgColor = Colors.white;
  List<String> listImageMateri = [];

  switchContent(String kdMateri) {
    switch (kdMateri) {
      case "persegi_panjang":
        bgColor = const Color(0xffFFD6D6);
        title = "Persegi Panjang";
        listImageMateri = [
          "assets/images/materi/image_materi/persegi_panjang_1.png",
          "assets/images/materi/image_materi/persegi_panjang_2.png",
          "assets/images/materi/image_materi/persegi_panjang_3.png",
          "assets/images/materi/image_materi/persegi_panjang_4.png",
        ];

        break;
      case "persegi":
        bgColor = const Color(0xffFFE4BB);
        title = "Persegi";
        listImageMateri = [
          "assets/images/materi/image_materi/persegi_1.png",
          "assets/images/materi/image_materi/persegi_2.png",
          "assets/images/materi/image_materi/persegi_3.png",
          "assets/images/materi/image_materi/persegi_4.png",
        ];

        break;
      case "trapesium":
        bgColor = const Color(0xffC4FFFF);
        title = "Trapesium";
        listImageMateri = [
          "assets/images/materi/image_materi/trapesium_1.png",
          "assets/images/materi/image_materi/trapesium_2.png",
          "assets/images/materi/image_materi/trapesium_3.png",
          "assets/images/materi/image_materi/trapesium_4.png",
        ];
        break;
      case "jajar_genjang":
        bgColor = const Color(0xffDFE0FF);
        title = "Jajar Genjang";
        listImageMateri = [
          "assets/images/materi/image_materi/jajar_genjang_1.png",
          "assets/images/materi/image_materi/jajar_genjang_2.png",
          "assets/images/materi/image_materi/jajar_genjang_3.png",
          "assets/images/materi/image_materi/jajar_genjang_4.png",
        ];
        break;
      case "belah_ketupat":
        bgColor = const Color(0xffCBE1FF);
        title = "Belah Ketupat";
        listImageMateri = [
          "assets/images/materi/image_materi/belah_ketupat_1.png",
          "assets/images/materi/image_materi/belah_ketupat_2.png",
          "assets/images/materi/image_materi/belah_ketupat_3.png",
          "assets/images/materi/image_materi/belah_ketupat_4.png",
        ];

        break;
      case "layang_layang":
        bgColor = const Color(0xffFFFADD);
        title = "Layang-Layang";
        listImageMateri = [
          "assets/images/materi/image_materi/layang_layang_1.png",
          "assets/images/materi/image_materi/layang_layang_2.png",
          "assets/images/materi/image_materi/layang_layang_3.png",
          "assets/images/materi/image_materi/layang_layang_4.png",
        ];
        break;
      case "lingkaran":
        bgColor = const Color(0xffE8FFD6);
        title = "Lingkaran";
        listImageMateri = [
          "assets/images/materi/image_materi/lingkaran_1.png",
          "assets/images/materi/image_materi/lingkaran_2.png",
          "assets/images/materi/image_materi/lingkaran_3.png",
          "assets/images/materi/image_materi/lingkaran_4.png",
        ];

        break;
      case "segitiga":
        bgColor = const Color(0xffFFD9E9);
        title = "Segitiga";
        listImageMateri = [
          "assets/images/materi/image_materi/segitiga_1.png",
          "assets/images/materi/image_materi/segitiga_2.png",
          "assets/images/materi/image_materi/segitiga_3.png",
          "assets/images/materi/image_materi/segitiga_4.png",
        ];

        break;
      default:
        bgColor = const Color(0xffFFD6D6);
    }
  }

  @override
  void initState() {
    instance = this;
    switchContent(widget.kdMateri);
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
