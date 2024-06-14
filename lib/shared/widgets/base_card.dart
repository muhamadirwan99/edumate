import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Widget child;
  final bool isBorderRadiusAll;

  const BaseCard({
    super.key,
    required this.child,
    this.isBorderRadiusAll = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(-5, -3), // changes position of shadow
          ),
        ],
        borderRadius: isBorderRadiusAll
            ? const BorderRadius.all(Radius.circular(12))
            : const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
      ),
      child: child,
    );
  }
}
