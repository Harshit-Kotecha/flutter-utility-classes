import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_digin/components/atoms/vertical_gap.dart';
import 'package:insta_digin/constants/app_colors.dart';
import 'package:insta_digin/constants/dimens.dart';

void snackBar(String title, {String err = "", bool isError = false}) {
  final snackBar = SnackBar(
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (err.isNotEmpty) ...{
          const VerticalGap(6),
          Text(
            err,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        },
      ],
    ),
    backgroundColor: isError ? AppColors.inputErrorColor : null,
    margin: EdgeInsets.all(scaleW(8, Get.context!)),
    elevation: 10,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
}
