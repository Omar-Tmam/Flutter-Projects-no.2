import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 60),
              child: Text(
                'Newsest Books',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      BestSellerListView()
    ]);
  }
}
