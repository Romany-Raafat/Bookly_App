import 'package:bookly_app_project/core/utils/app_router.dart';
import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/Custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookView);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(imageUrl: AssetsData.imageAsset1),
            SizedBox(width: 35),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                  SizedBox(height: 10),
                  const Text('by Rudyard Kipling', style: Styles.textStyle14),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        r'4.5$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                      SizedBox(width: 30),
                      const Icon(Icons.star, color: Colors.amber),
                      const Text("4.8", style: Styles.textStyle16),
                      SizedBox(width: 5),
                      Text(
                        "(2339)",
                        style: Styles.textStyle14.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
