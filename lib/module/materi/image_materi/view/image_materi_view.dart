import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class ImageMateriView extends StatefulWidget {
  final String kdMateri;

  const ImageMateriView({
    super.key,
    required this.kdMateri,
  });

  Widget build(context, ImageMateriController controller) {
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Contoh benda disekitar kita yang berbentuk ',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: controller.title,
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 95.0,
                  ),
                  SizedBox(
                    height: 450,
                    child: ListView.builder(
                      itemCount: controller.listImageMateri.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Image.asset(
                          controller.listImageMateri[index],
                          width: 400,
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
    );
  }

  @override
  State<ImageMateriView> createState() => ImageMateriController();
}
