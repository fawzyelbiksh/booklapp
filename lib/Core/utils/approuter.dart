import 'package:booklapp/Features/Home/presentation/views/homeview.dart';
import 'package:booklapp/Features/Splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ( context,  state) {
        return const SplashView();
      },
     
    ),
     GoRoute(
      path: '/homeView',
      builder: ( context,  state) {
        return const HomeView();
      },
     
    ),

  ],
);
}