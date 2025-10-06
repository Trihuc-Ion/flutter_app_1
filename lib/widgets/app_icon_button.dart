import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final Color borderColor;
  final bool isCircle;

  const AppIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
    this.borderColor = Colors.black,
    this.isCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppStyles.buttonSize,
      height: AppStyles.buttonSize,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor.withOpacity(0.1), width: 1),
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: isCircle
            ? BorderRadius.circular(AppStyles.buttonSize / 2) // cerc
            : BorderRadius.circular(10), // dreptunghi
        child: Material(
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Icon(icon, color: borderColor, size: iconSize),
            ),
          ),
        ),
      ),
    );
  }
}
