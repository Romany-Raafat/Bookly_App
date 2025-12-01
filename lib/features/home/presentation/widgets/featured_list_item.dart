import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: MediaQuery.of(context).size.height * 0.4,
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(AssetsData.imageAsset1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
