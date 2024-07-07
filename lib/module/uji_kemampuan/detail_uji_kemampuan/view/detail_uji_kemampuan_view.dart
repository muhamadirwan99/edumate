import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class DetailUjiKemampuanView extends StatefulWidget {
  const DetailUjiKemampuanView({super.key});

  Widget build(context, DetailUjiKemampuanController controller) {
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
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 177,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: const Offset(-5, -3),
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              controller.questions[controller.index].imageTop
                                          ?.isNotEmpty ??
                                      false
                                  ? SvgPicture.asset(
                                      controller.questions[controller.index]
                                              .imageTop ??
                                          "",
                                    )
                                  : Container(),
                              Row(
                                children: [
                                  controller.questions[controller.index]
                                              .imageLeft?.isNotEmpty ??
                                          false
                                      ? Row(
                                          children: [
                                            SvgPicture.asset(
                                              controller
                                                      .questions[
                                                          controller.index]
                                                      .imageLeft ??
                                                  "",
                                            ),
                                            const SizedBox(
                                              width: 16.0,
                                            ),
                                          ],
                                        )
                                      : Container(),
                                  Expanded(
                                    child: Text.rich(
                                      createTextSpan(
                                        controller.questions[controller.index]
                                            .question,
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
                                      offset: Offset(0, -2),
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
                    height: 24.0,
                  ),
                  CustomProgressIndicator(
                    bgColor: controller.questions[controller.index].bgColor,
                    progressColor:
                        controller.questions[controller.index].progressColor,
                    progress:
                        (controller.index + 1) / controller.questions.length,
                  ),
                  const SizedBox(
                    height: 72.0,
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0,
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 40,
                    ),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          controller.checkAnswer(index);
                        },
                        child: Container(
                          width: 116,
                          height: 116,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(4, -4),
                              ),
                            ],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller
                                    .questions[controller.index].bgColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1,
                                    spreadRadius: 0,
                                    offset: Offset(-3, 4),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 16,
                                    spreadRadius: 10,
                                    offset: Offset(-3, 4),
                                  ),
                                ]),
                            child: Center(
                              child: controller.questions[controller.index]
                                      .answers[index]
                                      .contains("assets")
                                  ? SvgPicture.asset(
                                      controller.questions[controller.index]
                                          .answers[index],
                                    )
                                  : Text(
                                      controller.questions[controller.index]
                                          .answers[index],
                                      style: GoogleFonts.montserrat(
                                        color: primaryColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      );
                    },
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
  State<DetailUjiKemampuanView> createState() => DetailUjiKemampuanController();
}
