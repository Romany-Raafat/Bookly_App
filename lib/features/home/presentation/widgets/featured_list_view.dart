import 'package:bookly_app_project/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_project/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app_project/features/home/presentation/widgets/featured_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.32,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.only(right: 15, top: 10, bottom: 10),
                  child: FeaturedListItem(imgURL:state.books[index].volumeInfo!.imageLinks!.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMsg: state.erroMsg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

//!