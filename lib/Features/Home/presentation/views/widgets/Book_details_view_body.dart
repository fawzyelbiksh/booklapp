import 'package:booklapp/Core/utils/styles.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BookRating.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BooksAction.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BooksDetailsAction.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/Custom_Book_Details_AppBar.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/similarBooksAction.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:const  [
                CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                 Expanded(child:  SizedBox(height: 50)),
                 SimilarBooksAction(),
                 SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



