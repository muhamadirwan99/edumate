import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color bgColor;
  final Color progressColor;
  final double progress;

  const CustomProgressIndicator({
    super.key,
    required this.bgColor,
    required this.progressColor,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - (24 * 2);
    return Stack(
      children: [
        Container(
          height: 3,
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
        ),
        Container(
          height: 3,
          width: width * progress,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
        ),
      ],
    );
  }
}
