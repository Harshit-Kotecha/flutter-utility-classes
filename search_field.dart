import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/assets.dart';
import '../../../../constants/dimens.dart';
import '../../../../utils/app_styles.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key? key,
    required this.placeHolderTxt,
    required this.onSearchService,
    this.keyboardType,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;
  final String placeHolderTxt;
  final Future<void> Function({String? searchKey}) onSearchService;
  final TextInputType? keyboardType;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      keyboardType: keyboardType,
      onSubmitted: (value) {
        onSearchService(searchKey: value);
      },
      onChanged: (value) {
        // API will be called after a delay
        if (timer == null || _searchController.text.isEmpty) {
          onSearchService(searchKey: _searchController.text);
          timer = Timer(const Duration(milliseconds: 300), () {
            timer = null;
          });
        }
      },
      scrollPadding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      decoration: InputDecoration(
        hintText: placeHolderTxt,
        hintStyle: getTextStyleNormal(
          fontSize: scaleW(12, context),
          fontWeight: FontWeight.w500,
          color: AppColors.lightBlack,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: scaleW(24, context),
          maxWidth: scaleW(40, context),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: scaleH(5, context)),
        prefixIcon: Container(
          margin: EdgeInsets.symmetric(horizontal: scaleW(8, context)),
          child: SvgPicture.asset(
            Assets.searchIcon,
            height: scaleW(24, context),
            width: scaleW(24, context),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(scaleW(6, context)),
          borderSide: BorderSide(color: AppColors.greyVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.navyBlue),
        ),
      ),
    );
  }
}
