import 'package:bookly_app_project/core/utils/assets_data.dart';
import 'package:bookly_app_project/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, bottom: 20),
      child: Row(
        children: [
          Container(
            height: 350,
            width: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.imageAsset1),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
          ),
          SizedBox(width: 35),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('The Jungle Book', style: Styles.textStyle20),
              SizedBox(height: 10),
              const Text('by Rudyard Kipling', style: Styles.textStyle14),
              SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  const Text(r'4.5$', style: Styles.textStyle16),
                  SizedBox(width: 20),
                  const Text("(2339)", style: Styles.textStyle14),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
