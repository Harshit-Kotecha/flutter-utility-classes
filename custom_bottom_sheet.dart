import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:insta_digin/constants/assets.dart';
import 'package:insta_digin/constants/dimens.dart';

Future<void> customBottomSheet(
  BuildContext context,
  Widget child, {
  Function? onCrossClick,
  double? height,
  bool isCrossVisible = true,
  double? paddingHorizontal,
  double? paddingVertical,
  bool? isScrollable = true,
  bool isDismissible = true,
  Function? onDismissed,
}) async {
  showModalBottomSheet<Widget>(
    context: context,
    isScrollControlled: true,
    isDismissible: isDismissible,
    useSafeArea: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(scaleR(18, context)),
        topRight: Radius.circular(scaleR(18, context)),
      ),
    ),
    builder: (ctx) {
      return SingleChildScrollView(
        child: Container(
          height: height,
          padding: EdgeInsets.only(
            left: paddingHorizontal ?? scaleW(20, context),
            right: paddingHorizontal ?? scaleW(20, context),
            top: paddingVertical ?? scaleH(20, context),
            bottom: paddingVertical ?? scaleH(20, context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isCrossVisible)
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      if (onCrossClick != null) {
                        onCrossClick();
                      }
                      Get.back();
                    },
                    child: SvgPicture.asset(
                      Assets.crossIcon,
                      width: scaleW(15, context),
                      height: scaleW(15, context),
                    ),
                  ),
                )
              else
                const SizedBox.shrink(),
              SingleChildScrollView(
                child: child,
              )
            ],
          ),
        ),
      );
    },
  ).then((value) => {if (onDismissed != null) onDismissed()});
}
