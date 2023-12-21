import 'package:flutter/material.dart';
import 'package:insta_digin/constants/app_colors.dart';
import 'package:insta_digin/constants/dimens.dart';
import 'package:insta_digin/utils/app_styles.dart';

class RoundedBtn extends StatelessWidget {
  RoundedBtn({
    Key? key,
    required this.text,
    this.onPress,
    this.textStyle,
    this.onSubmitColor,
    this.width,
    this.height,
  }) : super(key: key);

  void Function()? onPress;
  String text;
  final TextStyle? textStyle;
  final Color? onSubmitColor;

  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: onSubmitColor ?? AppColors.blueVariant,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: () {
          if (onPress != null) {
            onPress!();
          }
        },
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: scaleW(width ?? 280, context),
          height: scaleH(height ?? 38, context),
          alignment: Alignment.center,
          child: Text(
            text,
            style: textStyle ??
                getTextStyleNormal(
                  fontSize: scaleW(14, context),
                  fontWeight: FontWeight.w800,
                  color: AppColors.white,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
