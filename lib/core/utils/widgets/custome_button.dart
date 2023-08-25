import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
