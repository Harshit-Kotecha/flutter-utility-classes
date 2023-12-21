import 'dart:ui';
import 'package:auriga_one/core/components/atoms/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

class OverlayLoading extends StatelessWidget {
  const OverlayLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Center(
        child: customProgressIndicator(),
      ),
    );
  }
}
