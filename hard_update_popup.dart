import 'dart:io';

import 'package:flutter/material.dart';
import 'package:srlm_app/constants/app_colors.dart';
import 'package:srlm_app/constants/app_strings.dart';
import 'package:srlm_app/core/components/custom_text.dart';
import 'package:srlm_app/core/components/custom_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class HardUpdatePopup extends StatelessWidget {
  const HardUpdatePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CustomText(
        text: AppStrings.hardUpdate,
        textStyle: CustomTextStyle.textStyle14Medium(context,color: AppColors.f000000),
      ),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('A new version of the app is available.'),
            Text('Please update the app to continue.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            if (Platform.isAndroid || Platform.isIOS) {
              final appId = Platform.isAndroid
                  ? 'com.example.srlm_app'
                  : 'YOUR_IOS_APP_ID';
              final url = Platform.isAndroid
                  ? 'market://details?id=$appId'
                  : 'https://apps.apple.com/app/id$appId';
              launchUrl(Uri.parse(url));
            }
          },
          child: CustomText(
            text: AppStrings.update,
            textStyle: CustomTextStyle.textStyle12Medium(
              context,
              color: AppColors.f22AA60,
            ),
          ),
        ),
      ],
    );
  }
}
