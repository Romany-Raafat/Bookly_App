import 'package:bookly_app_project/core/utils/assets_data.dart';
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
              Text(
                'The Jungle Book',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'by Rudyard Kipling',
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  Text(r'4.5$', style: TextStyle(fontSize: 25)),
                  SizedBox(width: 20),
                  Text("(2339)"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
