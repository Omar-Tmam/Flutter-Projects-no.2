import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key, this.padding = const EdgeInsets.only(left: 30)});
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: Padding(
            padding: padding,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetData.test),
                      ),
                    ),
                  ),
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
                          'Harry Potter and the Goblet of Fire',
                          style: Styles.textStyle20
                              .copyWith(fontFamily: kGtsectraFine),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text('J.K. Rowling', style: Styles.textStyle14),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '19.99 €',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          BookRating(),
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
