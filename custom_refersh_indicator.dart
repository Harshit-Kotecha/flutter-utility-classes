import 'package:auriga_one/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatelessWidget {
  final Function onRefeshCallback;
  final Widget child;

  const CustomRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefeshCallback,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await onRefeshCallback();
      },
      backgroundColor: AppColors.f07182C,
      color: AppColors.fF08D32,
      child: child,
    );
  }
}
