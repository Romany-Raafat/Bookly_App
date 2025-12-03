import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? color;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.borderRadius,
    this.color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: const Size(250, 70),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(25),
        ),
      ),
      child: Center(child: Text(text ?? 'Free', style: textStyle)),
    );
  }
}
