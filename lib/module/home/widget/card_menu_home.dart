import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class CaredMenuHome extends StatelessWidget {
  final Color color;
  final String svgAsset;
  final String title;
  final String subtitle;
  final Function()? onTap;

  const CaredMenuHome({
    super.key,
    required this.color,
    required this.svgAsset,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: BaseCard(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                child: SizedBox(
                  width: 105,
                  height: 105,
                  child: SvgPicture.asset(
                    svgAsset,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.montserrat(
                color: primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 11.0,
            ),
          ],
        ),
      ),
    );
  }
}
