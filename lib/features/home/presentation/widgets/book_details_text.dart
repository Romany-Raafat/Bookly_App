import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsText extends StatelessWidget {
  const BookDetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "The Jungle Book",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.normal,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "by Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Icon(Icons.star, color: Colors.amber),
            SizedBox(width: 10),
            Text(
              '4.5',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal),
            ),
            SizedBox(width: 10),
            Text(
              "(245)",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
