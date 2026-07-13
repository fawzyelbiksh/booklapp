 
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'custom_list_view_item.dart' ;
  
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
      CustomAppBar (),
    FeaturedBooksListView (),
      ]
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) {
            return const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedBookItem(),
            );
          },
          itemCount: 10,
        
        ),
      ),
    );
    
  }
}