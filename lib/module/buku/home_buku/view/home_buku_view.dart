import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HomeBukuView extends StatefulWidget {
  const HomeBukuView({super.key});

  Widget build(context, HomeBukuController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Buku",
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
                                  "assets/images/buku/banner_buku.svg",
                                  height: 136,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 12.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffD04848),
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
                    itemCount: controller.listBuku.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final BukuModel bukuModel = controller.listBuku[index];

                      return Container(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: CardBuku(
                          title: bukuModel.title,
                          source: bukuModel.source,
                          volume: bukuModel.volume,
                          image: bukuModel.image,
                          bgColor: bukuModel.bgColor,
                          btnColor: bukuModel.btnColor,
                          onTap: () {
                            Get.to(DetailBukuView(
                              pdf: bukuModel.pdf,
                            ));
                          },
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
  State<HomeBukuView> createState() => HomeBukuController();
}
