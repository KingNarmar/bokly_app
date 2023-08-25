import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'books_action.dart';
import 'custome_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomeBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(
                  height: 37,
                ),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
