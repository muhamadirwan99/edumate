import 'package:flutter/material.dart';

class BaseBody extends StatelessWidget {
  final Widget child;

  const BaseBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: child,
      ),
    );
  }
}
