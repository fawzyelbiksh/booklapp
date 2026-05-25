import 'package:booklapp/Features/Splash/presentation/views/splashview.dart';
import 'package:booklapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BookAPP());
}

class BookAPP extends StatelessWidget {
  const BookAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData().copyWith(  
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
