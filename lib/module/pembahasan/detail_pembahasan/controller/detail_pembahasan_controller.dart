import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import 'package:flutter/widgets.dart';

class DetailPembahasanController extends State<DetailPembahasanView> {
  static late DetailPembahasanController instance;
  late DetailPembahasanView view;

  int index = 0;

  switchPembahasan(String kdPembahasan) {
    switch (kdPembahasan) {
      case "1":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            4,
            (indexPembahasan) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SvgPicture.asset(
                        listPembahasan[index]
                            .pembahasan1![indexPembahasan]
                            .image,
                      ),
                    ),
                    Expanded(
                      child: Text.rich(
                        createTextSpan(
                          listPembahasan[index]
                              .pembahasan1![indexPembahasan]
                              .keterangan,
                          GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      case "2":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              listPembahasan[index].pembahasan2!.image,
            ),
            const SizedBox(
              height: 11.0,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    24,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  listPembahasan[index].pembahasan2!.rumus,
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              listPembahasan[index].pembahasan2!.caraPengerjaan,
              style: GoogleFonts.montserrat(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      case "3":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(4, (indexPembahasan) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  Container(
                    width: 103,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          24,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        listPembahasan[index]
                            .pembahasan3![indexPembahasan]
                            .rumus,
                        style: GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14.0,
                  ),
                  Expanded(
                    child: Text.rich(
                      createTextSpan(
                        listPembahasan[index]
                            .pembahasan3![indexPembahasan]
                            .keterangan,
                        GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      case "4":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                listPembahasan[index].pembahasan4!.image,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              listPembahasan[index].pembahasan4!.keterangan,
              style: GoogleFonts.montserrat(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }

  @override
  void initState() {
    instance = this;
    index = widget.index;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  List<PembahasanModel> listPembahasan = [
    PembahasanModel(
      bgColor: const Color(0xffCBCEFF),
      containerColor: const Color(0xffDADCFF),
      soal: markBold(
        "Yang merupakan bangun trapesium berikut ini adalah . . .",
        "trapesium",
      ),
      kdPembahasan: "1",
      pembahasan1: [
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/trapesium.svg",
          keterangan: markBold("Trapesium", "Trapesium"),
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/kotak.svg",
          keterangan: "Persegi",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
          keterangan: "Jajar Genjang",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/belah_ketupat.svg",
          keterangan: "Belah Ketupat",
        ),
      ],
      kesimpulan: "Jadi, gambar yang sesuai dengan bangun trapesium yaitu :",
      imageKesimpulan: "assets/images/uji_kemampuan/detail/trapesium.svg",
    ),
    PembahasanModel(
      bgColor: const Color(0xffCFFFFF),
      containerColor: const Color(0xffA7DFDF),
      soal: markBold(
        "Sebuah kolam berenang yang berbentuk persegi panjang memiliki panjang kolam 5 meter dan lebar kolam 3 meter. Berapakah luas kolam berenang tersebut . . . m²",
        "persegi panjang",
      ),
      kdPembahasan: "2",
      pembahasan2: Pembahasan2Model(
        image: "assets/images/pembahasan/detail/soal_2.svg",
        rumus: "Luas ( L ) = panjang x lebar",
        caraPengerjaan: "L = p x l\nL = 5 m x 3 m\nL = 15 m²",
      ),
      kesimpulan: markBold(
        "Jadi, luas kolam berenang sebesar 15 m²",
        "15",
      ),
    ),
    PembahasanModel(
      bgColor: const Color(0xffFFE7C3),
      containerColor: const Color(0xffF3CF99),
      soal: markBold(
        "Kamar Rina berbentuk persegi dengan panjang setiap sisi 7 meter. Berapakah keliling kamar Rina . . . m",
        "persegi",
      ),
      kdPembahasan: "2",
      pembahasan2: Pembahasan2Model(
        image: "assets/images/pembahasan/detail/soal_3.svg",
        rumus: "Keliling ( K ) = 4 x s",
        caraPengerjaan: "K = 4 x s\nK = 4 x 7 m\nK = 28 m",
      ),
      kesimpulan: markBold(
        "Jadi, keliling kamar Rina sebesar 28 m",
        "28",
      ),
    ),
    PembahasanModel(
      bgColor: const Color(0xffFFD9E9),
      containerColor: const Color(0xffFFC1DB),
      soal: markBold(
        "Tentukan keliling bangun disamping . . . cm",
        "",
      ),
      kdPembahasan: "2",
      pembahasan2: Pembahasan2Model(
        image: "assets/images/pembahasan/detail/soal_4.svg",
        rumus: "Keliling ( K ) = 4 x s",
        caraPengerjaan: "K = 4 x s\nK = 4 x 14 cm\nK = 56 cm",
      ),
      kesimpulan: markBold(
        "Jadi, keliling bangun persegi tersebut 56 cm",
        "56",
      ),
    ),
    PembahasanModel(
      bgColor: const Color(0xffBED9FF),
      containerColor: const Color(0xffD6E7FF),
      soal: "Berikut ini yang bukan termasuk bangun datar adalah . . .",
      kdPembahasan: "1",
      pembahasan1: [
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/layang_layang.svg",
          keterangan: "Layang - layang",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/segi_tiga.svg",
          keterangan: "Segitiga",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/kubus.svg",
          keterangan: markBold("Kubus", "Kubus"),
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
          keterangan: "Persegi Panjang",
        ),
      ],
      kesimpulan:
          "Jadi, gambar yang bukan bangun datar yaitu kubus karena termasuk bangun ruang",
      imageKesimpulan: "assets/images/uji_kemampuan/detail/kubus.svg",
    ),
    PembahasanModel(
      bgColor: const Color(0xffE8FFD6),
      containerColor: const Color(0xffCAEFAD),
      soal: markBold(
        "Manakah yang termasuk bentuk jajar genjang . . .",
        "jajar genjang",
      ),
      kdPembahasan: "1",
      pembahasan1: [
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/kotak.svg",
          keterangan: "Persegi",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/trapesium.svg",
          keterangan: "Trapesium",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
          keterangan: markBold("Jajar genjang", "Jajar genjang"),
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/belah_ketupat.svg",
          keterangan: "Belah Ketupat",
        ),
      ],
      kesimpulan: "Jadi, bentuk bangun jajar genjang yaitu:",
      imageKesimpulan: "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
    ),
    PembahasanModel(
      bgColor: const Color(0xffCFFFFF),
      containerColor: const Color(0xffA7DFDF),
      soal: markBold(
        "Berikut ini merupakan rumus keliling persegi adalah . . .",
        "persegi",
      ),
      kdPembahasan: "3",
      pembahasan3: [
        Pembahasan3Model(
          rumus: "4 x s",
          keterangan: markBold(
            "Keliling persegi",
            "Keliling persegi",
          ),
        ),
        Pembahasan3Model(
          rumus: "s x s",
          keterangan: "Luas persegi",
        ),
        Pembahasan3Model(
          rumus: "2x(p + l)",
          keterangan: "Keliling persegi panjang",
        ),
        Pembahasan3Model(
          rumus: "p x l",
          keterangan: "Luas persegi panjang",
        ),
      ],
      kesimpulan: "Jadi, rumus keliling persegi yaitu:",
      imageKesimpulan: "assets/images/pembahasan/detail/kesimpulan_7.svg",
    ),
    PembahasanModel(
      bgColor: const Color(0xffFFE7C3),
      containerColor: const Color(0xffF3CF99),
      soal: markBold(
        "Alex bermain di lapangan yang berbentuk persegi panjang dengan panjang 12 m dan lebar 5 m. Maka luas lapangan tersebut adalah . . . m²",
        "persegi panjang",
      ),
      kdPembahasan: "2",
      pembahasan2: Pembahasan2Model(
        image: "assets/images/pembahasan/detail/soal_8.svg",
        rumus: "Luas ( L ) = panjang x lebar ",
        caraPengerjaan: "L = p x l\nL = 12 m x 5 m\nL = 60 m²",
      ),
      kesimpulan: markBold(
        "Jadi, luas lapangan tempat Alex bermain seluas 60 m²",
        "60",
      ),
    ),
    PembahasanModel(
      bgColor: const Color(0xffFFD9E9),
      containerColor: const Color(0xffFFC1DB),
      soal: "Tentukan keliling bangun di atas . . . cm",
      kdPembahasan: "4",
      pembahasan4: Pembahasan4Model(
        image: "assets/images/uji_kemampuan/detail/soal_9.svg",
        keterangan:
            "K = (10-4) + 5 + 10 + 5 + 4 + 4 + 4\nK = 6 + 5 + 10 + 5 + 4 + 4 + 4\nK = 38 cm",
      ),
      kesimpulan:
          markBold("Jadi, keliling gabungan bangun  tersebut 38 cm", "38"),
    ),
    PembahasanModel(
      bgColor: const Color(0xffBED9FF),
      containerColor: const Color(0xffD6E7FF),
      soal: "Berikut ini yang termasuk bangun datar adalah . . .",
      kdPembahasan: "1",
      pembahasan1: [
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/prisma_segitiga.svg",
          keterangan: "Prisma Segitiga",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/balok.svg",
          keterangan: "Balok",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/kubus.svg",
          keterangan: "Kubus",
        ),
        Pembahasan4Model(
          image: "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
          keterangan: markBold("Persegi Panjang", "Persegi Panjang"),
        ),
      ],
      kesimpulan: markBold(
          "Jadi, gambar yang termasuk bangun datar yaitu persegi panjang",
          "persegi panjang"),
      imageKesimpulan: "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class PembahasanModel {
  final String soal;
  final String kdPembahasan;
  final Color bgColor;
  final Color containerColor;
  final List<Pembahasan4Model>? pembahasan1;
  final Pembahasan2Model? pembahasan2;
  final List<Pembahasan3Model>? pembahasan3;
  final Pembahasan4Model? pembahasan4;
  final String kesimpulan;
  final String? imageKesimpulan;

  PembahasanModel({
    required this.soal,
    required this.kdPembahasan,
    required this.bgColor,
    required this.containerColor,
    this.pembahasan1,
    this.pembahasan2,
    this.pembahasan3,
    this.pembahasan4,
    required this.kesimpulan,
    this.imageKesimpulan,
  });
}

class Pembahasan2Model {
  final String image;
  final String rumus;
  final String caraPengerjaan;

  Pembahasan2Model({
    required this.image,
    required this.rumus,
    required this.caraPengerjaan,
  });
}

class Pembahasan3Model {
  final String rumus;
  final String keterangan;

  Pembahasan3Model({
    required this.rumus,
    required this.keterangan,
  });
}

class Pembahasan4Model {
  final String image;
  final String keterangan;

  Pembahasan4Model({
    required this.image,
    required this.keterangan,
  });
}
