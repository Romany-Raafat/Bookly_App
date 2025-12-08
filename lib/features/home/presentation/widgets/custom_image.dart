import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  const CustomImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 150, 
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(8),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(value: downloadProgress.progress),
          ),
          errorWidget: (context, url, error) =>
              Center(child: Icon(Icons.error, size: 35)),
        ),
      ),
    );
  }
}
