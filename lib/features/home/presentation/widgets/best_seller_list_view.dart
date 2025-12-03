import 'package:bookly_app_project/features/home/presentation/widgets/best_seller_List_view_item.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  final ScrollPhysics? physics;
  const BookListViewItem({super.key, this.physics});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: physics ?? NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => BestSellerListViewItem(),
    );
  }
}
