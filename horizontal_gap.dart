import 'package:flutter/material.dart';
import '../theme/dimen.dart';

class HorizontalGap extends StatelessWidget {
  final double size;
  const HorizontalGap({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: scaleW(size, context),
    );
  }
}
