import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class CardBuku extends StatelessWidget {
  final String title;
  final String source;
  final String volume;
  final String image;
  final Color bgColor;
  final Color btnColor;
  final Function()? onTap;

  const CardBuku({
    super.key,
    required this.title,
    required this.source,
    required this.volume,
    required this.image,
    required this.bgColor,
    required this.btnColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 24,
            offset: const Offset(-5, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 11,
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 189,
            ),
            const SizedBox(
              width: 9.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: title,
                      style: GoogleFonts.montserrat(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: volume,
                          style: GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    source,
                    style: GoogleFonts.montserrat(
                      color: primaryColor,
                      fontSize: 6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: onTap,
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: btnColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                        ),
                        child: Center(
                          child: Text(
                            "Baca Disini",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
