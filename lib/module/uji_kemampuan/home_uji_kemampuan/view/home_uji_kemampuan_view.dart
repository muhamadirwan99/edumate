import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HomeUjiKemampuanView extends StatefulWidget {
  const HomeUjiKemampuanView({super.key});

  Widget build(context, HomeUjiKemampuanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Uji Kemampuan",
        appBar: AppBar(),
      ),
      body: BaseBody(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  BaseCard(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 13.0,
                            top: 13,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Buku adalah sumber ilmu terbaik ",
                                      style: GoogleFonts.montserrat(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Text(
                                      "bagi siapa pun yang membacanya",
                                      style: GoogleFonts.montserrat(
                                        color: primaryColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  "assets/images/uji_kemampuan/banner_uji_kemampuan.svg",
                                  height: 136,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 12.0,
                          decoration: const BoxDecoration(
                            color: Color(0xff5A9D24),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const DetailUjiKemampuanView());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff6895D2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 12,
                            offset: const Offset(-5, -3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 34.0),
                        child: Center(
                          child: Text(
                            "Mulai",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 54.0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const HomePembahasanView());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1B85F),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 12,
                            offset: const Offset(-5, -3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 34.0),
                        child: Center(
                          child: Text(
                            "Lihat Pembahasan",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomeUjiKemampuanView> createState() => HomeUjiKemampuanController();
}
