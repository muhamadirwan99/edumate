import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

class WrongAnswerDialog extends StatelessWidget {
  const WrongAnswerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SvgPicture.asset("assets/images/uji_kemampuan/detail/salah.svg"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Coba Lagi",
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
