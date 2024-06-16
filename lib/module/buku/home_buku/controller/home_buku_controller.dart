import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/home_buku_view.dart';

class HomeBukuController extends State<HomeBukuView> {
  static late HomeBukuController instance;
  late HomeBukuView view;

  List<BukuModel> listBuku = [
    BukuModel(
      title: "Belajar Bersama Temanmu Matematika untuk Sekolah Dasar Kelas IV",
      source: "Sumber : Sistem Informasi Perbukuan Indonesia",
      volume: "- Volume 1",
      image: "assets/images/buku/thumbnail/thumbnail_1.png",
      pdf: "assets/pdf/book_1.pdf",
      bgColor: const Color(0xffFFCCCC),
      btnColor: const Color(0xffD04949),
    ),
    BukuModel(
      title: "Belajar Bersama Temanmu Matematika untuk Sekolah Dasar Kelas IV",
      source: "Sumber : Sistem Informasi Perbukuan Indonesia",
      volume: "- Volume 2",
      image: "assets/images/buku/thumbnail/thumbnail_2.png",
      pdf: "assets/pdf/book_2.pdf",
      bgColor: const Color(0xffFFE7C3),
      btnColor: const Color(0xffF0B75F),
    ),
    BukuModel(
      title: "Matematika untuk SD/MI Kelas IV",
      source: "Sumber : Sistem Informasi Perbukuan Indonesia",
      volume: "",
      image: "assets/images/buku/thumbnail/thumbnail_3.png",
      pdf: "assets/pdf/book_3.pdf",
      bgColor: const Color(0xffCFFFFF),
      btnColor: const Color(0xff7FC0C0),
    ),
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

class BukuModel {
  final String title;
  final String source;
  final String volume;
  final String image;
  final String pdf;
  final Color bgColor;
  final Color btnColor;

  BukuModel({
    required this.title,
    required this.source,
    required this.volume,
    required this.image,
    required this.pdf,
    required this.bgColor,
    required this.btnColor,
  });
}
