import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key, required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 2.6 / 4, // نفس نسبة كتب أبلكيشن Bookly
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: imgURL,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
            errorWidget: (context, url, error) =>
                Center(child: Icon(Icons.error, size: 35)),
          ),
        ),
      ),
    );
  }
}

