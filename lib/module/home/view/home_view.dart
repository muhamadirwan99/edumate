import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              "assets/images/logo/edumate.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/images/logo/text_edumate.svg",
              height: 20,
            ),
            SvgPicture.asset(
              "assets/icons/misc/home.svg",
            ),
          ],
        ),
      ),
      body: BaseBody(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                BaseCard(
                  isBorderRadiusAll: false,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                          top: 13,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mari mengenal bangun datar!",
                                    style: GoogleFonts.montserrat(
                                      color: primaryColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Matematika itu menyenangkan",
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xffFFC100),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: SvgPicture.asset(
                                "assets/images/home/mari_mengenal.svg",
                                height: 119,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 37.0,
                        decoration: const BoxDecoration(
                          color: Color(0xff6895D2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CaredMenuHome(
                        color: const Color(0xffFFD99E),
                        svgAsset: "assets/images/home/materi.svg",
                        title: "Materi",
                        subtitle: "Bangun Datar",
                        onTap: () {
                          Get.to(const HomeMateriView());
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 43.0,
                    ),
                    Expanded(
                      child: CaredMenuHome(
                        color: const Color(0xff9FC8FF),
                        svgAsset: "assets/images/home/video.svg",
                        title: "Video",
                        subtitle: "Pembelajaran ",
                        onTap: () {
                          Get.to(const HomeVideoView());
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CaredMenuHome(
                        color: const Color(0xffFFB8B8),
                        svgAsset: "assets/images/home/buku_paket.svg",
                        title: "Buku Paket",
                        subtitle: "Matematika",
                        onTap: () {
                          Get.to(const HomeBukuView());
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 43.0,
                    ),
                    Expanded(
                      child: CaredMenuHome(
                        color: const Color(0xffC8FF9E),
                        svgAsset: "assets/images/home/uji_kemampuan.svg",
                        title: "Uji Kemampuan",
                        subtitle: "Siswa",
                        onTap: () {
                          Get.to(const HomeUjiKemampuanView());
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
