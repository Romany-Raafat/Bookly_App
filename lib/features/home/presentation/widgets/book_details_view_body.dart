import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/book_details_text.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/books_actions.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/custom_book_dettails_app_bar.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/featured_list_item.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/similar_list_view_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: SafeArea(
        child: ListView(
          children: [
            CustomBookDetailsAppBar(),
            Center(child: FeaturedListItem()),
            const SizedBox(height: 23),
            BookDetailsText(),
            const SizedBox(height: 23),
            BookActions(),
            const SizedBox(height: 30),
            const Text("You can also like", style: Styles.textStyle14),
            const SizedBox(height: 15),
            SimilarListViewBooks(),
          ],
        ),
      ),
    );
  }
}
