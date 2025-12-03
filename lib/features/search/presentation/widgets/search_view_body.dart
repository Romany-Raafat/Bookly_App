import 'package:bookly_app_project/features/search/presentation/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomSearchTextField()]);
  }
}
