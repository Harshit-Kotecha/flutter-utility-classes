import 'package:flutter/material.dart';
import 'package:srlm_app/constants/app_colors.dart';
import 'package:srlm_app/core/components/custom_text_style.dart';
import 'package:srlm_app/routing/named_routes.dart';
import 'package:srlm_app/routing/navigation_handler.dart';
import 'package:srlm_app/utils/utils.dart';

class UserProfile extends StatelessWidget {
  final String imagePath;
  final String name;
  final double radius;
  const UserProfile({
    super.key,
    required this.imagePath,
    required this.name,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationHandler.navigateTo(NamedRoutes.myAccount);
      },
      child: Container(
        child: imagePath.isEmpty
            ? profileImage(context, name)
            : CircleAvatar(
                radius: radius,
                backgroundColor: AppColors.fFFFFFF,
                child: ClipOval(
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // P.printError(error.toString());
                      return profileImage(context, name);
                    },
                  ),
                ),
              ),
      ),
    );
  }

  Widget profileImage(BuildContext context, String name) {
    final String initials = Utils.getInitials(name);
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.f273D57,
      child: Text(
        initials,
        style: CustomTextStyle.textStyle24Medium(context),
      ),
    );
  }
}
