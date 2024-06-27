import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class CorrectAnswerDialog extends StatelessWidget {
  const CorrectAnswerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SvgPicture.asset("assets/images/uji_kemampuan/detail/benar.svg"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Lanjut Soal Berikutnya",
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
