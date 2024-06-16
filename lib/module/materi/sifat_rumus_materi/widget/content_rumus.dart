import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class ContentRumus extends StatefulWidget {
  final SifatRumusMateriController controller;

  const ContentRumus({
    super.key,
    required this.controller,
  });

  @override
  State<ContentRumus> createState() => _ContentRumusState();
}

class _ContentRumusState extends State<ContentRumus> {
  @override
  Widget build(BuildContext context) {
    SifatRumusMateriController controller = widget.controller;
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: SvgPicture.asset(
            controller.model.assetWfImage,
            height: 210,
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Text(
          controller.model.ketRumus,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 24.0,
        ),
        ListView.builder(
          itemCount: controller.model.rumus.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        24.0,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: const Offset(6, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      controller.model.rumus[index],
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
