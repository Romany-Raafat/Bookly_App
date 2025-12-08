import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Text(
                'Newst Books',
                style: Styles.textStyle18.copyWith(fontSize: 30),
              ),
              SizedBox(height: 10),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
