import 'package:bookly_app_project/features/home/presentation/widgets/book_details_text.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/custom_book_dettails_app_bar.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/featured_list_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: SafeArea(
        child: ListView(
          children: [
            CustomBookDetailsAppBar(),
            Center(child: FeaturedListItem()),
            const SizedBox(height: 43),
            BookDetailsText(),
          ],
        ),
      ),
    );
  }
}

