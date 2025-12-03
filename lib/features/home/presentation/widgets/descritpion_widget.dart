import 'package:flutter/material.dart';

class DescritpionWidget extends StatelessWidget {
  const DescritpionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Container(
        width: 500,
        height: 400,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Welcome to Bookly!\n\n"
          "Here you can explore the best books, discover trending titles, "
          "and enjoy a simple-by-design reading experience.\n\n"
          "Start your journey now! 📚✨",
          style: TextStyle(
            fontSize: 30,
            height: 1.4,
            // color: Colors.w,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
