
import 'package:booklapp/Core/utils/assets.dart';
import 'package:booklapp/Features/Home/presentation/views/homeview.dart';
import 'package:booklapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'SlidingText.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation(); // Start the animation
    navigateToHome();
  }

 


   @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }  
  Widget build(BuildContext context) {
    return Column(
     
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset(AssetsData.logo),
       const SizedBox(height: 4,),
      SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }


    void initSlidingAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 12), // Start from below the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));
    
    animationController.forward();
  }
   void navigateToHome() {
     Future.delayed( const Duration(seconds: 3), () {
        Get.to (() => const HomeView(),transition: Transition.fade , duration: TransitionDuration);
    
      });
  }
}

