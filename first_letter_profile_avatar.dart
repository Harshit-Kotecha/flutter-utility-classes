import 'package:flutter/material.dart';
import 'package:insta_digin/constants/app_colors.dart';

class FirstLetterProfileAvatar extends StatelessWidget {
  const FirstLetterProfileAvatar({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final letter = name.isNotEmpty && name.split(" ").isNotEmpty
        ? name.split(" ").first[0]
        : "";
    return CircleAvatar(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.purpleVariant,
      child: Text(
        letter.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
