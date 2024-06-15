import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class MateriView extends StatefulWidget {
  const MateriView({super.key});

  Widget build(context, MateriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Materi",
        appBar: AppBar(),
      ),
      body: BaseBody(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
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
                                    "Jangan berhenti belajar",
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
                                    "sampai kamu merasa bangga dengan hasilnya.",
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
                                "assets/images/materi/banner_materi.svg",
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 12.0,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFC100),
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
                  height: 24.0,
                ),
                ListView.builder(
                  itemCount: controller.materiAssets.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    MateriModel materiLeft = controller.materiAssets[index][0];
                    MateriModel materiRight = controller.materiAssets[index][1];

                    return Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              materiLeft.assets,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              materiRight.assets,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MateriView> createState() => MateriController();
}
