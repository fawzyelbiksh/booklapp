import 'package:booklapp/Features/Splash/presentation/views/widgets/splashviewbody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xff100B20),
      body:  SplashViewBody(),
    );
  }
}
  