import 'package:bookly_app_project/core/utils/app_router.dart';
import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/Custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BestSellerListViewItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: Duration(seconds: 3), //Default value
      interval: Duration(seconds: 5), //Default value: Duration(seconds: 0)
      color: Colors.red, //Default value
      colorOpacity: 0, //Default value
      enabled: true, //Default value
      direction: ShimmerDirection.fromLTRB(),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookView);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImage(
                imageUrl:
                    bookModel.volumeInfo!.imageLinks?.thumbnail ??
                    "https://via.placeholder.com/150",
              ),
              SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 200,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontSize: 22),
                    ),
                    SizedBox(height: 10),
                    Text(
                      bookModel.volumeInfo!.authors![0],
                      style: Styles.textStyle14,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 5),
                        Text(
                          r'Free',
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
      ),
    );
  }
}
