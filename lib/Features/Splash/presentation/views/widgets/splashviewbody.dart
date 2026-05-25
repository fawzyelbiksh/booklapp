
import 'package:booklapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset(AssetsData.logo),
       const SizedBox(height: 20,),
       Text("Read free books",style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      
      ],
    );
  }
}