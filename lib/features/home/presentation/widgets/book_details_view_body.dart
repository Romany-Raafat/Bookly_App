import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: SafeArea(child: Column(children: [CustomBookDetailsAppBar()])),
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close, size: 35)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, size: 35)),
      ],
    );
  }
}
