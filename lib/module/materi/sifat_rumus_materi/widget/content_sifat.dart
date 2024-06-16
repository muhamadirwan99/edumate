import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class ContentSifat extends StatefulWidget {
  final SifatRumusMateriController controller;

  const ContentSifat({
    super.key,
    required this.controller,
  });

  @override
  State<ContentSifat> createState() => _ContentSifatState();
}

class _ContentSifatState extends State<ContentSifat> {
  @override
  Widget build(BuildContext context) {
    SifatRumusMateriController controller = widget.controller;
    return ListView.builder(
      itemCount: controller.model.sifat.length,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              controller.model.sifat[index],
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: controller.model.lineColor,
              thickness: 1,
            ),
          ],
        );
      },
    );
  }
}
