import 'package:flutter/material.dart';
import '../theme/dimen.dart';

class VerticalGap extends StatelessWidget {
  final double size;
  const VerticalGap({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scaleH(size, context),
    );
  }
}
