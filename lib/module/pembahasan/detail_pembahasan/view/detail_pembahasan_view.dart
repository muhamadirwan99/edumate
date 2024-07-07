import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class DetailPembahasanView extends StatefulWidget {
  final int index;

  const DetailPembahasanView({
    super.key,
    required this.index,
  });

  Widget build(context, DetailPembahasanController controller) {
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: controller
                              .listPembahasan[controller.index].bgColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 29.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: controller
                                      .listPembahasan[controller.index]
                                      .containerColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Text.rich(
                                        createTextSpan(
                                          controller
                                              .listPembahasan[controller.index]
                                              .soal,
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
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: controller
                                      .listPembahasan[controller.index]
                                      .containerColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: controller.switchPembahasan(
                                    controller.listPembahasan[controller.index]
                                        .kdPembahasan,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: controller
                                      .listPembahasan[controller.index]
                                      .containerColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Text.rich(
                                        createTextSpan(
                                          controller
                                              .listPembahasan[controller.index]
                                              .kesimpulan,
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
                                      controller
                                                  .listPembahasan[
                                                      controller.index]
                                                  .imageKesimpulan !=
                                              null
                                          ? Column(
                                              children: [
                                                const SizedBox(
                                                  height: 21.0,
                                                ),
                                                SvgPicture.asset(controller
                                                    .listPembahasan[
                                                        controller.index]
                                                    .imageKesimpulan!),
                                              ],
                                            )
                                          : Container(),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: const Offset(0, -5),
                                ),
                              ],
                            ),
                            child: Text(
                              "Pembahasan",
                              style: GoogleFonts.montserrat(
                                color: primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -15,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: const Offset(0, -5),
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 1,
                                      spreadRadius: 0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 8,
                                      spreadRadius: 6,
                                      offset: Offset(0, 1),
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                  (controller.index + 1).toString(),
                                  style: GoogleFonts.montserrat(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 46.0,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: controller
                              .listPembahasan[controller.index].bgColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 28,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: controller.listPembahasan[controller.index]
                                  .containerColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              controller.index = index;
                                              controller.update();
                                            },
                                            child: Opacity(
                                              opacity: index == controller.index
                                                  ? 0.5
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                      spreadRadius: 0,
                                                      blurRadius: 12,
                                                      offset:
                                                          const Offset(0, 0),
                                                    ),
                                                  ],
                                                ),
                                                child: SvgPicture.asset(
                                                  "assets/images/pembahasan/detail/icon/${index + 1}.svg",
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              controller.index = index + 5;
                                              controller.update();
                                            },
                                            child: Opacity(
                                              opacity:
                                                  index + 5 == controller.index
                                                      ? 0.5
                                                      : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                      spreadRadius: 0,
                                                      blurRadius: 12,
                                                      offset:
                                                          const Offset(0, 0),
                                                    ),
                                                  ],
                                                ),
                                                child: SvgPicture.asset(
                                                  "assets/images/pembahasan/detail/icon/${index + 6}.svg",
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: const Offset(0, -5),
                                ),
                              ],
                            ),
                            child: Text(
                              "Pembahasan",
                              style: GoogleFonts.montserrat(
                                color: primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
  State<DetailPembahasanView> createState() => DetailPembahasanController();
}
