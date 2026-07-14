 
import 'package:booklapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'featured_book_list_view.dart';
  
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
        CustomAppBar (),
        FeaturedBooksListView (),
        const SizedBox(height: 50,),
        Text("Best Seller",style: Style.titleMedium,),
        ]
      ),
    );
  }
}

