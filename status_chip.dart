import 'package:flutter/material.dart';
import 'package:insta_digin/components/atoms/custom_text.dart';
import 'package:insta_digin/constants/dimens.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
  });

  final String text;
  final Color textColor;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: scaleW(8, context),
        vertical: scaleH(2, context),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          scaleR(10, context),
        ),
        color: bgColor,
      ),
      child: CustomText(
        text,
        TextStyle(
          color: textColor,
          fontSize: scaleW(12, context),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
