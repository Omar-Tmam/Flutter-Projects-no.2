import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSerachTextField extends StatelessWidget {
  const CustomSerachTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 16.0),
      child: TextField(
        onSubmitted: (value) {
          BlocProvider.of<SearchBooksCubit>(context).fetchSearchResults(query: value);
        },
        decoration: InputDecoration(
            enabledBorder: buildOutlinedInputBorder(),
            focusedBorder: buildOutlinedInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Opacity(
                opacity: 0.8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 28,
                ),
              ),
            )),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}
