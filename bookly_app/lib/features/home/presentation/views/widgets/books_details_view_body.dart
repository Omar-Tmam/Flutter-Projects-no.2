import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                const SizedBox(height: 50),
                const SimilarBooksSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
