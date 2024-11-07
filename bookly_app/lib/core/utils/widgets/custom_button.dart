import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backBroudndColor,
    this.borderRadius,
    required this.textColor,
    required this.text,
    this.fontSize,
    this.onPressed,
  });

  final Color backBroudndColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backBroudndColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(18),
            )),
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
