import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HasilUjiKemampuanView extends StatefulWidget {
  final String score;

  const HasilUjiKemampuanView({
    super.key,
    required this.score,
  });

  Widget build(context, HasilUjiKemampuanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.offAll(const HomeUjiKemampuanView()),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              "assets/icons/misc/back.svg",
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "",
          ),
        ),
        actions: [
          InkWell(
            onTap: () => Get.offAll(const HomeView()),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                "assets/icons/misc/home.svg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff67CFCF),
          image: DecorationImage(
            image: AssetImage('assets/images/background/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: IntrinsicHeight(
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
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/uji_kemampuan/star_left.svg",
                          ),
                          SvgPicture.asset(
                            "assets/images/uji_kemampuan/star_right.svg",
                          ),
                        ],
                      ),
                      Text(
                        "Selamat",
                        style: GoogleFonts.montserrat(
                          fontSize: 48,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 363,
                        decoration: const BoxDecoration(
                          color: Color(0xff67CFCF),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/background/bg_hasil.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 363,
                            minWidth: 367,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  score,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 64,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Poin",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 32.0,
                                ),
                                Text(
                                  controller.switchScore(score),
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: const Color(0xffFF7272),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        "Selesai",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 27.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const HomePembahasanView());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffF1B85F),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.12),
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: const Offset(6, 4),
                              ),
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                12.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              "Lihat Pembahasan",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HasilUjiKemampuanView> createState() => HasilUjiKemampuanController();
}
