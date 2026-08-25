import 'package:booklapp/Features/Home/presentation/views/widgets/Custom_Book_Details_AppBar.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
         CustomBookDetailsAppBar(),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width*.15),
           child: CustomBookImage(),
         ),
        ],
      ),
    );
  }
}
