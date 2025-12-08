import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 2.6 / 4, // نفس نسبة كتب أبلكيشن Bookly
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(AssetsData.imageAsset1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
