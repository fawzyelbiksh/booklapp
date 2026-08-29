import 'package:booklapp/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          return const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookImage(),
          );
        },
        itemCount: 10,
      
      ),
    );
  }
}