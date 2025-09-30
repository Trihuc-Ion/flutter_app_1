import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_application_1/widgets/app_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final IconData actionIcon;
  final VoidCallback onLeadingPressed;
  final VoidCallback onActionPressed;

  const CustomAppBar({
    super.key,
    required this.leadingIcon,
    required this.actionIcon,
    required this.onLeadingPressed,
    required this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.red,
      elevation: 0,
      leadingWidth: AppStyles.buttonSize + AppStyles.horizontalPadding,
      leading: Center(
        child: Padding(
          padding: EdgeInsets.only(left: AppStyles.horizontalPadding),
          child: AppIconButton(
            icon: leadingIcon,
            iconSize: AppStyles.iconSmall,
            onPressed: onLeadingPressed,
          ),
        ),
      ),
      actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: AppStyles.horizontalPadding),
            child: AppIconButton(
              icon: actionIcon,
              iconSize: AppStyles.iconSmall,
              onPressed: onActionPressed,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
