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
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
      child: SafeArea(
        child: ListView(
          children: [
            CustomBookDetailsAppBar(),
            Center(child: FeaturedListItem()),
            const SizedBox(height: 43),
            BookDetailsText(),
            const SizedBox(height: 43),
            BookActions(),
            const SizedBox(height: 50),
            const Text("You can also like", style: Styles.textStyle14),
            const SizedBox(height: 15),
            SimilarListViewBooks(),
          ],
        ),
      ),
    );
  }
}