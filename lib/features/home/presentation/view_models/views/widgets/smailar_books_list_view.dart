import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SamilarBooksListView extends StatelessWidget {
  const SamilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
