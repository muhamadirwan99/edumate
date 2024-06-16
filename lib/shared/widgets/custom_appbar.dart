import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final AppBar appBar;

  const CustomAppbar({
    super.key,
    this.title,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => Get.back(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/icons/misc/back.svg",
          ),
        ),
      ),
      title: Center(
        child: Text(
          title ?? "",
        ),
      ),
      actions: [
        InkWell(
          onTap: () => Get.offAll(const HomeView()),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              "assets/icons/misc/home.svg",
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
