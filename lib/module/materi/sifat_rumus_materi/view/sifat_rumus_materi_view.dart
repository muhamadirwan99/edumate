import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class SifatRumusMateriView extends StatefulWidget {
  final String kdMateri;
  final bool isSifat;

  const SifatRumusMateriView({
    super.key,
    required this.kdMateri,
    required this.isSifat,
  });

  Widget build(context, SifatRumusMateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
      ),
      floatingActionButton: GestureDetector(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        color: controller.model.bgColor,
        child: SingleChildScrollView(
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
                  const SizedBox(
                    height: 72.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height -
                        AppBar().preferredSize.height -
                        MediaQuery.of(context).padding.top -
                        72,
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
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 21,
                        ),
                        child: Column(
                          children: [
                            Text(
                              controller.model.title,
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            Text(
                              controller.model.description,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 21.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: controller.model.bgColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 11,
                                  horizontal: 30,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              controller.isSifat = true;
                                              controller.update();
                                            },
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: controller.isSifat
                                                    ? controller.model
                                                        .containerColorActive
                                                    : controller.model
                                                        .containerColorDeactive,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(
                                                    24.0,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 5.0,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Sifat",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: controller.isSifat
                                                          ? controller.model
                                                              .textColorActive
                                                          : controller.model
                                                              .textColorDeactive,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                              controller.isSifat = false;
                                              controller.update();
                                            },
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: !controller.isSifat
                                                    ? controller.model
                                                        .containerColorActive
                                                    : controller.model
                                                        .containerColorDeactive,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(
                                                    24.0,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5.0),
                                                child: Center(
                                                  child: Text(
                                                    "Rumus",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: !controller.isSifat
                                                          ? controller.model
                                                              .textColorActive
                                                          : controller.model
                                                              .textColorDeactive,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                      height: 24.0,
                                    ),
                                    controller.isSifat
                                        ? ContentSifat(
                                            controller: controller,
                                          )
                                        : ContentRumus(
                                            controller: controller,
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
  State<SifatRumusMateriView> createState() => SifatRumusMateriController();
}
