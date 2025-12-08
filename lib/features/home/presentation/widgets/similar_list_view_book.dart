import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/Custom_image.dart';
import 'package:flutter/material.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const CustomImage(imageUrl: AssetsData.imageAsset1),
        ),
      ),
    );
  }
}
