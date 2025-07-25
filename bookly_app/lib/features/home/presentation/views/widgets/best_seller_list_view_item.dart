import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, this.padding, required this.bookModel});
  final EdgeInsetsGeometry? padding;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.kBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: Padding(
            padding: padding ?? const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                CustomBookImage(
                  imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          bookModel.volumeInfo!.title!,
                          style: Styles.textStyle20
                              .copyWith(fontFamily: kGtsectraFine),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                          bookModel.volumeInfo?.authors?[0] ?? 'Unknown Author',
                          style: Styles.textStyle14),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            bookModel.saleInfo!.saleability!,
                            style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          BookRating(
                            rating: bookModel.volumeInfo!.averageRating!,
                            count: bookModel.volumeInfo!.ratingsCount!,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
