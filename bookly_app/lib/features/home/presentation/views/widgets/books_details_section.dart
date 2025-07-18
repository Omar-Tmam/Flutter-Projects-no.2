import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo!.title!,
            style: Styles.textStyle30,
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo?.authors?[0] ?? 'Unknown Author',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: bookModel.volumeInfo!.averageRating!,
          count: bookModel.volumeInfo!.ratingsCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 36),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
