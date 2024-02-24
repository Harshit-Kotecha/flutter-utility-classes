import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:srlm_app/global/dimensions.dart';
import 'package:srlm_app/constants/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.leadingIcon = '',
    this.trailingIcon = '',
    required this.isNotDisabled,
    this.width = double.infinity,
    this.borderColor = false,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;
  final String leadingIcon;
  final String trailingIcon;
  final bool isNotDisabled;
  final double? width;
  final bool borderColor;

  @override
  Widget build(BuildContext context) {
    var icon = '';
    if (trailingIcon.isNotEmpty) {
      icon = trailingIcon;
    } else if (leadingIcon.isNotEmpty) {
      icon = leadingIcon;
    }

    return SizedBox(
      width: width,
      height: scaleH(context, 39),
      child: Directionality(
        textDirection:
            trailingIcon.isNotEmpty ? TextDirection.rtl : TextDirection.ltr,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(scaleW(context, 10)),
          child: ElevatedButton.icon(
            onPressed: !isNotDisabled ? null : onPress,
            style: ButtonStyle(
              
              backgroundColor: borderColor
                  ? MaterialStateProperty.all(AppColors.neutralsWhite)
                  : isNotDisabled
                      ? MaterialStateProperty.all(AppColors.primary_500)
                      : MaterialStateProperty.all(AppColors.disabledColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: isNotDisabled
                        ? AppColors.primary_500
                        : AppColors.disabledColor,
                  ),
                ),
              ),
            ),
            label: Text(
              title,
              style: Get.theme.textTheme.titleMedium?.copyWith(
                color: borderColor
                    ? AppColors.primary_500
                    : isNotDisabled
                        ? AppColors.neutralsWhite
                        : AppColors.neutrals_500,
                fontSize: scaleW(context, 14),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            icon: icon.isNotEmpty
                ? SvgPicture.asset(
                    icon,
                    fit: BoxFit.fitHeight,
                    colorFilter: borderColor
                        ? ColorFilter.mode(
                            AppColors.buttonColor,
                            BlendMode.srcIn,
                          )
                        : isNotDisabled
                            ? ColorFilter.mode(
                                AppColors.neutralsWhite,
                                BlendMode.srcIn,
                              )
                            : ColorFilter.mode(
                                AppColors.neutrals_500,
                                BlendMode.srcIn,
                              ),
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}
