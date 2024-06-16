import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class DetailMateriView extends StatefulWidget {
  final String kdMateri;

  const DetailMateriView({
    super.key,
    required this.kdMateri,
  });

  Widget build(context, DetailMateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
      ),
      body: Container(
        color: controller.bgColor,
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        SvgPicture.asset(
                          controller.assetImage,
                        ),
                        SvgPicture.asset(
                          controller.assetWfImage,
                          height: 250,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 232.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: const Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 52,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 45.0,
                              ),
                              Text(
                                controller.title,
                                style: GoogleFonts.montserrat(
                                  color: primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Expanded(
                                child: Text(
                                  controller.description,
                                  style: GoogleFonts.montserrat(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 31.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(
                                          SifatRumusMateriView(
                                            kdMateri: kdMateri,
                                            isSifat: true,
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: controller.containerColor,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              24.0,
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 5.0,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Sifat",
                                              style: GoogleFonts.montserrat(
                                                color: controller.textColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(
                                          SifatRumusMateriView(
                                            kdMateri: kdMateri,
                                            isSifat: false,
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: controller.containerColor,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              24.0,
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: Center(
                                            child: Text(
                                              "Rumus",
                                              style: GoogleFonts.montserrat(
                                                color: controller.textColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
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
                                height: 12.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -30.0,
                        left: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              ImageMateriView(kdMateri: kdMateri),
                            );
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: SvgPicture.asset(
                                "assets/icons/misc/search.svg",
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
  State<DetailMateriView> createState() => DetailMateriController();
}
