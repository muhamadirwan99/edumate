import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HomePembahasanView extends StatefulWidget {
  const HomePembahasanView({super.key});

  Widget build(context, HomePembahasanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
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
                                      "Pilih nomor soal",
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
                                      "untuk lihat pembahasannya",
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
                                  "assets/images/pembahasan/banner_pembahasan.svg",
                                  height: 136,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 12.0,
                          decoration: const BoxDecoration(
                            color: Color(0xff5d04848),
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
                    height: 72.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) => InkWell(
                              onTap: () {
                                Get.to(DetailPembahasanView(
                                  index: index,
                                ));
                              },
                              child: SvgPicture.asset(
                                "assets/images/pembahasan/${index + 1}.svg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => InkWell(
                              onTap: () {
                                Get.to(DetailPembahasanView(
                                  index: index + 4,
                                ));
                              },
                              child: SvgPicture.asset(
                                "assets/images/pembahasan/${index + 5}.svg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) => InkWell(
                              onTap: () {
                                Get.to(DetailPembahasanView(
                                  index: index + 7,
                                ));
                              },
                              child: SvgPicture.asset(
                                "assets/images/pembahasan/${index + 8}.svg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const DetailPembahasanView(
                              index: 9,
                            ));
                          },
                          child: SvgPicture.asset(
                            "assets/images/pembahasan/10.svg",
                          ),
                        ),
                      ],
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
  State<HomePembahasanView> createState() => HomePembahasanController();
}
