import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/no_data_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomSerachTextField(),
                const SizedBox(height: 20),
                BlocBuilder<SearchBooksCubit, SearchBooksState>(
                  builder: (context, state) {
                    if (state is SearchBooksSuccess) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.77,
                        child: ListView.builder(
                          itemCount: state.books.length,
                          itemBuilder: (context, index) {
                            return BookListViewItem(
                              padding: EdgeInsets.zero,
                              bookModel: state.books[index],
                            );
                          },
                        ),
                      );
                    } else if (state is SearchBooksFailiure) {
                      return CustomErrorWidget(errMessage: state.errMessage);
                    } else if (state is SearchBooksInitial) {
                      return NoDataView();
                    } else {
                      return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: CustomLoadingIndicator());
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
