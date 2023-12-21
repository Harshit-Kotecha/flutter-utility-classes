import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:insta_digin/components/atoms/custom_text.dart';
import 'package:insta_digin/components/atoms/rounded_btn.dart';
import 'package:insta_digin/constants/app_colors.dart';
import 'package:insta_digin/constants/app_strings.dart';
import 'package:insta_digin/constants/dimens.dart';

class CancelSubmitRow extends StatelessWidget {
  const CancelSubmitRow({
    super.key,
    required this.onSubmit,
    this.onCancel,
    this.onSubmitBgColor,
    this.onSubmitTextStyle,
  });

  final void Function()? onCancel;
  final void Function() onSubmit;
  final Color? onSubmitBgColor;
  final TextStyle? onSubmitTextStyle;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: Dimens.screenWidth(context) / 2.3,
            child: Center(
              child: GestureDetector(
                onTap: onCancel ??
                    () {
                      Get.back<Widget>();
                    },
                child: CustomText(
                  AppStrings.cancel,
                  TextStyle(
                    fontSize: scaleW(14, context),
                    fontWeight: FontWeight.w600,
                    color: AppColors.blueVariant,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Dimens.screenWidth(context) / 2.3,
            child: RoundedBtn(
              text: AppStrings.submit,
              onSubmitColor: onSubmitBgColor,
              textStyle: onSubmitTextStyle,
              onPress: onSubmit,
            ),
          ),
        ],
      ),
    );
  }
}
