import 'package:booklapp/Core/utils/approuter.dart';
import 'package:booklapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24,vertical: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 18.1),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass,size:24,color: Colors.white,),
          ),
      
        ]
      ),
    );
  }
}