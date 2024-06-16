import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailVideoView extends StatefulWidget {
  final VideoModel videoModel;
  final List<VideoModel> videoList;

  const DetailVideoView({
    super.key,
    required this.videoModel,
    required this.videoList,
  });

  Widget build(context, DetailVideoController controller) {
    controller.view = this;

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller.ytController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: primaryColor,
        onReady: () {
          controller.isPlayerReady = true;
        },
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: CustomAppbar(
            appBar: AppBar(),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: videoModel.decorationColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/background/background.png'),
                fit: BoxFit.cover,
              ),
            ),
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
                        height: 37.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: SizedBox(
                          height: 208,
                          child: player,
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              //action to previous video

                              controller.index--;

                              if (controller.index < 0) {
                                controller.index =
                                    controller.videoListFiltered.length - 1;
                              }
                              controller.ytController.load(controller
                                  .videoListFiltered[controller.index].idYt);

                              // controller.update();
                            },
                            child: Container(
                              width: 55,
                              height: 55,
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
                                  "assets/icons/video/back.svg",
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.ytController.value.isPlaying
                                  ? controller.ytController.pause()
                                  : controller.ytController.play();
                            },
                            child: Container(
                              width: 64,
                              height: 64,
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
                                  controller.ytController.value.isPlaying
                                      ? "assets/icons/video/pause.svg"
                                      : "assets/icons/video/play_detail.svg",
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              //action to next video

                              controller.index++;

                              if (controller.index >=
                                  controller.videoListFiltered.length) {
                                controller.index = 0;
                              }
                              controller.ytController.load(controller
                                  .videoListFiltered[controller.index].idYt);

                              // controller.update();
                            },
                            child: Container(
                              width: 55,
                              height: 55,
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
                                  "assets/icons/video/forward.svg",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height -
                            AppBar().preferredSize.height -
                            MediaQuery.of(context).padding.top -
                            208 -
                            37 -
                            64 -
                            48,
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
                                const SizedBox(
                                  height: 21.0,
                                ),
                                ListView.builder(
                                  itemCount:
                                      controller.videoListFiltered.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final VideoModel videoModel =
                                        controller.videoListFiltered[index];
                                    return Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 24),
                                      child: CardVideo(
                                        onTap: () {
                                          controller.ytController
                                              .load(videoModel.idYt);
                                          controller.switchVideo(
                                            controller.selectedVideoModel,
                                            videoModel,
                                            index,
                                          );
                                        },
                                        title: videoModel.title,
                                        author: videoModel.author,
                                        thumbnail: videoModel.thumbnail,
                                        bgColor: videoModel.bgColor,
                                        decorationColor:
                                            videoModel.decorationColor,
                                      ),
                                    );
                                  },
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
      },
    );
  }

  @override
  State<DetailVideoView> createState() => DetailVideoController();
}
