import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/descritpion_widget.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedListView(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            const Text('Best Seller', style: Styles.textStyle18),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: BestSellerListView()),
                SizedBox(width: 20),
                DescritpionWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
