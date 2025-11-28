import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 40,
            width: 45,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 37),
          ),
        ],
      ),
    );
  }
}
