import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/sifat_rumus_materi_view.dart';

class SifatRumusMateriController extends State<SifatRumusMateriView> {
  static late SifatRumusMateriController instance;
  late SifatRumusMateriView view;

  bool isSifat = true;

  SifatRumusModel model = SifatRumusModel(
    title: "",
    description: "",
    assetWfImage: "",
    ketRumus: "",
    sifat: [],
    rumus: [],
    bgColor: Colors.white,
    textColorDeactive: Colors.black,
    textColorActive: Colors.black,
    containerColorDeactive: Colors.white,
    containerColorActive: Colors.white,
    lineColor: Colors.black,
  );

  switchContent(String kdMateri) {
    switch (kdMateri) {
      case "persegi_panjang":
        model = SifatRumusModel(
          title: "Persegi Panjang",
          description:
              "Persegi panjang adalah segi empat yang mempunyai dua pasang sisi yang berhadapan sama panjang dan sudutnya siku-siku.",
          assetWfImage:
              'assets/images/materi/detail_materi/wf_persegi_panjang.svg',
          ketRumus: "AB = CD = panjang\nBC = AD = lebar ",
          sifat: [
            "Memiliki empat sisi serta empat titik sudut ",
            "Memiliki dua pasang sisi sejajar yang berhadapan dan sama panjang ",
            "Keempat sudutnya sama besar yaitu 90 derajat (sudut siku-siku)",
            "Memiliki dua diagonal yang sama panjang",
            "Memiliki dua buah simetri lipat",
            "Memiliki dua simetri putar",
          ],
          rumus: [
            "Luas ( L ) = panjang x lebar ",
            "Keliling ( K ) = 2 x ( panjang + lebar )",
          ],
          bgColor: const Color(0xffFFD6D6),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xffD04848),
          containerColorActive: const Color(0xffD04848),
          containerColorDeactive: const Color(0xffD04848).withOpacity(0.20),
          lineColor: const Color(0xffF6BABA),
        );
        break;
      case "persegi":
        model = SifatRumusModel(
          title: "Persegi",
          description:
              "Persegi adalah bangun datar yang keempat sisinya sama panjang dan sudut–sudutnya siku-siku.",
          assetWfImage: 'assets/images/materi/detail_materi/wf_persegi.svg',
          ketRumus: "AB = BC = CD = DA = sisi",
          sifat: [
            "Memiliki empat sisi serta empat titik sudut ",
            "Memiliki dua pasang sisi sejajar",
            "Keempat sisi sama panjang",
            "Keempat sudutnya sama besar 90 derajat (sudut siku-siku)",
            "Memiliki empat buah simetri lipat ",
            "Memiliki empat simetri putar",
          ],
          rumus: [
            "Luas ( L ) = s x s",
            "Keliling ( K ) = 4 x s",
          ],
          bgColor: const Color(0xffFFE4BB),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xffEFB357),
          containerColorActive: const Color(0xffEFB357),
          containerColorDeactive: const Color(0xffEFB357).withOpacity(0.20),
          lineColor: const Color(0xffFFE4BB),
        );
        break;
      case "trapesium":
        model = SifatRumusModel(
          title: "Trapesium",
          description:
              "Trapesium adalah segi empat yang mempunyai sepasang sisi yang sejajar.",
          assetWfImage: 'assets/images/materi/detail_materi/wf_trapesium.svg',
          ketRumus: "AB dan CD = sisi sejajar\nDE = tinggi trapesium",
          sifat: [
            "Memiliki empat sisi dan empat titik sudut",
            "Memiliki sepasang sisi yang sejajar tetapi tidak sama panjang",
            "Sudut-sudut diantara sisi sejajar besarnya 180 derajat",
          ],
          rumus: [
            "Luas ( L ) = (AB + CD) : 2 x tinggi",
            "Keliling ( K ) = AB + BC + CD + DA",
          ],
          bgColor: const Color(0xffC4FFFF),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xff63A7A7),
          containerColorActive: const Color(0xff63A7A7),
          containerColorDeactive: const Color(0xff63A7A7).withOpacity(0.20),
          lineColor: const Color(0xff63A7A7),
        );
        break;
      case "jajar_genjang":
        model = SifatRumusModel(
          title: "Jajar Genjang",
          description:
              "Jajar genjang adalah segi empat yang mempunyai dua pasang sisi berhadapan saling sejajar dan sama panjang, serta sudut - sudut yang berhadapan sama besar.",
          assetWfImage:
              'assets/images/materi/detail_materi/wf_jajar_genjang.svg',
          ketRumus: "AB = CD = alas\nDE = tinggi",
          sifat: [
            "Memiliki empat sisi dan empat titik sudut ",
            "Memiliki dua pasang sisi sejajar dan sama panjang ",
            "Memiliki dua buah sudut tumpul (lebih dari 90 derajat) dan dua buah sudut lancip (kurang dari 90 derajat)",
            "Besar sudut yang berhadapan sama besar",
            "Tidak memiliki simetri lipat ",
            "Memiliki dua simetri putar",
          ],
          rumus: [
            "Luas ( L ) = alas × tinggi",
            "Keliling ( K ) = AB + BC + CD + DA",
          ],
          bgColor: const Color(0xffDFE0FF),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xff8589BF),
          containerColorActive: const Color(0xff8589BF),
          containerColorDeactive: const Color(0xff8589BF).withOpacity(0.20),
          lineColor: const Color(0xff8589BF),
        );
        break;
      case "belah_ketupat":
        model = SifatRumusModel(
          title: "Belah Ketupat",
          description:
              "Belah ketupat adalah bangun datar dengan keempat sisinya sama panjang dan seperti jajar genjang.",
          assetWfImage:
              'assets/images/materi/detail_materi/wf_belah_ketupat.svg',
          ketRumus:
              "AB = BC = CD = DA = sisi\nDB = diagonal 1\nAC = diagonal 2",
          sifat: [
            "Memiliki empat sisi dan empat titik sudut ",
            "Dua pasang sudut yang berhadapan sama besar ",
            "Keempat sisi sama panjang",
            "Memiliki diagonal yang berpotongan tegak lurus",
            "Memiliki dua simetri lipat ",
            "Memiliki dua simetri putar",
          ],
          rumus: [
            "Luas ( L ) = 1/2 x d1 x d2",
            "Keliling ( K ) = 4 x sisi",
          ],
          bgColor: const Color(0xffCBE1FF),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xff496FA1),
          containerColorActive: const Color(0xff496FA1),
          containerColorDeactive: const Color(0xff496FA1).withOpacity(0.20),
          lineColor: const Color(0xff496FA1),
        );
        break;
      case "layang_layang":
        model = SifatRumusModel(
          title: "Layang-layang",
          description:
              "Layang-layang adalah segi empat yang mempunyai dua  pasang sisi sama panjang dan diagonalnya berpotongan  saling tegak lurus.",
          assetWfImage:
              'assets/images/materi/detail_materi/wf_layang_layang.svg',
          ketRumus: "AB = AD, BC = CD\nAC = diagonal 1\nDB = diagonal 2",
          sifat: [
            "Memiliki empat sisi dan empat titik sudut",
            "Memiliki sepasang sisi yang sejajar tetapi tidak sama panjang",
            "Sudut-sudut diantara sisi sejajar besarnya 180 derajat",
          ],
          rumus: [
            "Luas ( L ) = 1/2 x d1 x d2",
            "Keliling ( K ) = 2 x ( AB + CD )",
          ],
          bgColor: const Color(0xffFFFADD),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xffBAA736),
          containerColorActive: const Color(0xffBAA736),
          containerColorDeactive: const Color(0xffBAA736).withOpacity(0.20),
          lineColor: const Color(0xffFFFADD),
        );
        break;
      case "lingkaran":
        model = SifatRumusModel(
          title: "Lingkaran",
          description:
              "Lingkaran adalah himpunan titik-titik yang berjarak sama terhadap suatu titik tertentu. Titik tersebut dinamakan titik pusat lingkaran.",
          assetWfImage: 'assets/images/materi/detail_materi/wf_lingkaran.svg',
          ketRumus: "r = jari - jari\nd = diameter\nphi = 22/7",
          sifat: [
            "Mempunyai satu sisi ",
            "Memiliki simetri putar dan simetri lipat tak berhingga",
          ],
          rumus: [
            "Luas ( L ) = phi x r x r",
            "Keliling ( K ) = phi x 2r",
          ],
          bgColor: const Color(0xffE8FFD6),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xff8ED654),
          containerColorActive: const Color(0xff8ED654),
          containerColorDeactive: const Color(0xff8ED654).withOpacity(0.20),
          lineColor: const Color(0xffC3FF93),
        );
        break;
      case "segitiga":
        model = SifatRumusModel(
          title: "Segitiga",
          description:
              "Segitiga adalah bangun datar yang dibatasi oleh tiga ruas garis yang ujung-ujungnya saling bertemu dan membentuk sudut.",
          assetWfImage: 'assets/images/materi/detail_materi/wf_segitiga.svg',
          ketRumus: "AB = a = alas\nCD = tinggi",
          sifat: [
            "Mempunyai tiga sisi dan tiga titik sudut",
            "Jumlah ketiga sudutnya 180 derajat",
          ],
          rumus: [
            "Luas ( L ) = 1/2 x alas x tinggi",
            "Keliling ( K ) = AB + BC + CA",
          ],
          bgColor: const Color(0xffFFD9E9),
          textColorActive: Colors.white,
          textColorDeactive: const Color(0xffC54278),
          containerColorActive: const Color(0xffC54278),
          containerColorDeactive: const Color(0xffC54278).withOpacity(0.20),
          lineColor: const Color(0x000000ff),
        );
        break;
      default:
        model = SifatRumusModel(
          title: "",
          description: "",
          assetWfImage: "",
          ketRumus: "",
          sifat: [],
          rumus: [],
          bgColor: Colors.white,
          textColorDeactive: Colors.black,
          textColorActive: Colors.black,
          containerColorDeactive: Colors.white,
          containerColorActive: Colors.white,
          lineColor: Colors.black,
        );
    }
  }

  @override
  void initState() {
    instance = this;
    switchContent(widget.kdMateri);
    isSifat = widget.isSifat;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class SifatRumusModel {
  final String title;
  final String description;
  final String assetWfImage;
  final String ketRumus;
  final List<String> sifat;
  final List<String> rumus;
  final Color bgColor;
  final Color textColorActive;
  final Color textColorDeactive;
  final Color containerColorActive;
  final Color containerColorDeactive;
  final Color lineColor;

  SifatRumusModel({
    required this.title,
    required this.description,
    required this.assetWfImage,
    required this.ketRumus,
    required this.sifat,
    required this.rumus,
    required this.bgColor,
    required this.textColorActive,
    required this.textColorDeactive,
    required this.containerColorActive,
    required this.containerColorDeactive,
    required this.lineColor,
  });
}
