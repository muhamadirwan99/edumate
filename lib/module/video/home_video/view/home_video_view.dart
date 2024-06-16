import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class HomeVideoView extends StatefulWidget {
  const HomeVideoView({super.key});

  Widget build(context, HomeVideoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Video",
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
                                      "Tak ada kata terlambat untuk belajar,",
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
                                      "selama kamu masih memiliki niat untuk meraih kesuksesan",
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
                                  height: 125,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 12.0,
                          decoration: const BoxDecoration(
                            color: Color(0xff6895D2),
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
                    itemCount: controller.listVideoModel.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final VideoModel videoModel =
                          controller.listVideoModel[index];
                      List<VideoModel> videoListCopy =
                          List<VideoModel>.from(controller.listVideoModel);

                      return Container(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: CardVideo(
                          onTap: () {
                            Get.to(
                              DetailVideoView(
                                videoModel: videoModel,
                                videoList: videoListCopy,
                              ),
                            );
                          },
                          title: videoModel.title,
                          author: videoModel.author,
                          thumbnail: videoModel.thumbnail,
                          bgColor: videoModel.bgColor,
                          decorationColor: videoModel.decorationColor,
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
  State<HomeVideoView> createState() => HomeVideoController();
}
