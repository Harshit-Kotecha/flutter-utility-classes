import 'package:auriga_one/core/components/molecules/custom_button.dart';
import 'package:auriga_one/core/theme/colors.dart';
import 'package:auriga_one/core/theme/custom_text_style.dart';
import 'package:auriga_one/core/theme/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customDialog(
  BuildContext context,
  String title,
  Function onYes,
  Function? onNo,
) {
  Get.defaultDialog<dynamic>(
    titlePadding: EdgeInsets.only(
      top: scaleHeight(20, context),
    ),
    title: title,
    titleStyle:
        CustomTextStyle.textStyle14SemiBold(context, color: AppColors.f07182C),
    content: const VerticalDivider(),
    textConfirm: 'YES',
    confirm: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: scaleWidth(10, context),
        vertical: scaleHeight(5, context),
      ),
      child: CustomButton(
        title: 'YES',
        onClick: () => onYes(),
        textStyle: CustomTextStyle.textStyle12SemiBold(context),
        isBorder: false,
      ),
    ),
    cancel: Padding(
      padding: EdgeInsets.symmetric(horizontal: scaleWidth(10, context)),
      child: CustomButton(
        title: 'NO',
        onClick: () => onNo ?? Get.back<Widget>(),
        textStyle: CustomTextStyle.textStyle12SemiBold(
          context,
        ),
        isBorder: false,
      ),
    ),
    cancelTextColor: AppColors.f07182C,
    confirmTextColor: AppColors.fFFFFFF,
    buttonColor: AppColors.f030D1A,
  );
}
