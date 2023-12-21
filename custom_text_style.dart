import 'package:auriga_one/core/constants/app_constants.dart';
import 'package:auriga_one/core/theme/dimen.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomTextStyle {
  CustomTextStyle._();

  //POPPINS
  static TextStyle textStyle24Medium(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(24, context),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle20Medium(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(20, context),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle16Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(16, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle16SemiBold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(16, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );
  static TextStyle textStyle8Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(8, context),
        fontWeight: FontWeight.w800,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );
  static TextStyle textStyle16Regular(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(16, context),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle14Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(14, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle14SemiBold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(14, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle14Medium(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: scaleWidth(14, context),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.poppinsFont,
        color: color,
        letterSpacing: letterSpacing,
      );
  static TextStyle textStyle13Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: scaleWidth(13, context),
        fontWeight: FontWeight.w700,
        letterSpacing: letterSpacing ?? 0.2,
        color: color,
        fontFamily: AppConstants.poppinsFont,
      );
  static TextStyle textStyle12Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(12, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle12SemiBold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(12, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle12Medium(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(12, context),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle12R(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(12, context),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle10Bold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(10, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );
  static TextStyle textStyle10Regular(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(10, context),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );
  static TextStyle textStyle10SemiBold(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(10, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle8(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(8, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle13(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(13, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  static TextStyle textStyle11(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(11, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );
  static TextStyle textStyle11Medium(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(11, context),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.poppinsFont,
        color: color,
      );

  //PLAYFAIR
  static TextStyle textStyle20BoldPlayfair(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(20, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.playfairFont,
        color: color,
      );

  static TextStyle textStyle20SemiBoldPlayfair(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(20, context),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.playfairFont,
        color: color,
      );

  static TextStyle textStyle24BoldPlayfair(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
  }) =>
      TextStyle(
        fontSize: scaleWidth(24, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.playfairFont,
        color: color,
      );

  static TextStyle textStyle36BoldPlayfair(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: scaleWidth(36, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.playfairFont,
        letterSpacing: letterSpacing,
        color: color,
      );

  static TextStyle textStyle30BoldPlayfair(
    BuildContext context, {
    Color color = AppColors.fFFFFFF,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: scaleWidth(30, context),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.playfairFont,
        letterSpacing: letterSpacing,
        color: color,
      );
}
