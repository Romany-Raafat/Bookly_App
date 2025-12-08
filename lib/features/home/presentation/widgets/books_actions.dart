import 'package:bookly_app_project/constants.dart';
import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: '99.99 \$',
            textStyle: Styles.textStyle20.copyWith(
              color: Colors.black,
              fontFamily: GoogleFonts.montserrat().fontFamily,
              fontWeight: FontWeight.bold,
            ),
            color: const Color(0xffF1E6DA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: 'Free Preview',
            textStyle: Styles.textStyle16.copyWith(
              fontFamily: kGiloryBold,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            color: const Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
      ],
    );
  }
}
