import 'package:bookly_app_project/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_project/features/home/presentation/manager/newsest_books/newst_books_cubit.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/best_seller_List_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BestSellerListView extends StatelessWidget {
  final ScrollPhysics? physics;
  const BestSellerListView({super.key, this.physics});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: physics ?? NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                BestSellerListViewItem(bookModel: state.books[index]),
          );
        } else if (state is NewstBooksFailure) {
          return CustomErrorWidget(errorMsg: state.erroMsg);
        } else {
          return ListView.builder(
            shrinkWrap: true,
            physics: physics ?? NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) => BestSellerLoadingItem(),
          );
        }
      },
    );
  }
}


class BestSellerLoadingItem extends StatelessWidget {
  const BestSellerLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: Duration(seconds: 2),
      colorOpacity: 0.3,
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Container(width: 100, height: 150, color: Colors.grey.shade300),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 20,
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 10),
                Container(width: 120, height: 15, color: Colors.grey.shade300),
                SizedBox(height: 20),
                Container(width: 150, height: 20, color: Colors.grey.shade300),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
