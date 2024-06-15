import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/detail_materi_view.dart';

class DetailMateriController extends State<DetailMateriView> {
  static late DetailMateriController instance;
  late DetailMateriView view;

  String assetImage = "";
  String assetWfImage = "";
  String title = "";
  String description = "";
  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  Color containerColor = Colors.white;

  switchContent(String kdMateri) {
    switch (kdMateri) {
      case "persegi_panjang":
        assetImage = 'assets/images/materi/detail_materi/persegi_panjang.svg';
        assetWfImage =
            'assets/images/materi/detail_materi/wf_persegi_panjang.svg';
        title = "Persegi Panjang";
        description =
            "Persegi panjang adalah segi empat yang mempunyai dua pasang sisi yang berhadapan sama panjang dan sudutnya siku-siku.";
        bgColor = const Color(0xffFFD6D6);
        textColor = const Color(0xffD04848);
        containerColor = const Color(0xffD04848).withOpacity(0.20);
        break;
      case "persegi":
        assetImage = 'assets/images/materi/detail_materi/persegi.svg';
        assetWfImage = 'assets/images/materi/detail_materi/wf_persegi.svg';
        title = "Persegi";
        description =
            "Persegi adalah bangun datar yang keempat sisinya sama panjang dan sudut–sudutnya siku-siku.";
        bgColor = const Color(0xffFFE4BB);
        textColor = const Color(0xffEFB357);
        containerColor = const Color(0xffEFB357).withOpacity(0.20);
        break;
      case "trapesium":
        assetImage = 'assets/images/materi/detail_materi/trapesium.svg';
        assetWfImage = 'assets/images/materi/detail_materi/wf_trapesium.svg';
        title = "Trapesium";
        description =
            "Trapesium adalah segi empat yang mempunyai sepasang sisi yang sejajar.";
        bgColor = const Color(0xffC4FFFF);
        textColor = const Color(0xff63A7A7);
        containerColor = const Color(0xff63A7A7).withOpacity(0.20);
        break;
      case "jajar_genjang":
        assetImage = 'assets/images/materi/detail_materi/jajar_genjang.svg';
        assetWfImage =
            'assets/images/materi/detail_materi/wf_jajar_genjang.svg';
        title = "Jajar Genjang";
        description =
            "Jajar genjang adalah segi empat yang mempunyai dua pasang sisi berhadapan saling sejajar dan sama panjang, serta sudut – sudut yang berhadapan sama besar.";
        bgColor = const Color(0xffDFE0FF);
        textColor = const Color(0xff8589BF);
        containerColor = const Color(0xff8589BF).withOpacity(0.20);
        break;
      case "belah_ketupat":
        assetImage = 'assets/images/materi/detail_materi/belah_ketupat.svg';
        assetWfImage =
            'assets/images/materi/detail_materi/wf_belah_ketupat.svg';
        title = "Belah Ketupat";
        description =
            "Belah ketupat adalah bangun datar dengan keempat sisinya sama panjang dan seperti jajar genjang.";
        bgColor = const Color(0xffCBE1FF);
        textColor = const Color(0xff496FA1);
        containerColor = const Color(0xff496FA1).withOpacity(0.20);
        break;
      case "layang_layang":
        assetImage = 'assets/images/materi/detail_materi/layang_layang.svg';
        assetWfImage =
            'assets/images/materi/detail_materi/wf_layang_layang.svg';
        title = "Layang-layang";
        description =
            "Layang-layang adalah segi empat yang mempunyai dua  pasang sisi sama panjang dan diagonalnya berpotongan  saling tegak lurus.";
        bgColor = const Color(0xffFFFADD);
        textColor = const Color(0xffBAA736);
        containerColor = const Color(0xffBAA736).withOpacity(0.20);
        break;
      case "lingkaran":
        assetImage = 'assets/images/materi/detail_materi/lingkaran.svg';
        assetWfImage = 'assets/images/materi/detail_materi/wf_lingkaran.svg';
        title = "Lingkaran";
        description =
            "Lingkaran adalah himpunan titik-titik yang berjarak sama terhadap suatu titik tertentu. Titik tersebut dinamakan titik pusat lingkaran.";
        bgColor = const Color(0xffE8FFD6);
        textColor = const Color(0xff8ED654);
        containerColor = const Color(0xff8ED654).withOpacity(0.20);
        break;
      case "segitiga":
        assetImage = 'assets/images/materi/detail_materi/segitiga.svg';
        assetWfImage = 'assets/images/materi/detail_materi/wf_segitiga.svg';
        title = "Segitiga";
        description =
            "Segitiga adalah bangun datar yang dibatasi oleh tiga ruas garis yang ujung-ujungnya saling bertemu dan membentuk sudut.";
        bgColor = const Color(0xffFFD9E9);
        textColor = const Color(0xffC54278);
        containerColor = const Color(0xffC54278).withOpacity(0.20);
        break;
      default:
        assetImage = 'assets/images/materi/detail_materi/persegi.svg';
        assetWfImage = 'assets/images/materi/detail_materi/wf_persegi.svg';
        title = "Persegi";
        description = "";
        bgColor = const Color(0xffFFD6D6);
        textColor = const Color(0xffD04848);
        containerColor = const Color(0xffD04848).withOpacity(0.20);
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
