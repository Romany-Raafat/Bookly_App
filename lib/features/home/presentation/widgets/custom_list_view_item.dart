import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomFeaturedListItem extends StatelessWidget {
  const CustomFeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.3,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(AssetsData.imageAsset1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
