import 'package:booklapp/Features/Home/presentation/views/details_home_view.dart';
import 'package:booklapp/Features/Home/presentation/views/homeview.dart';
import 'package:booklapp/Features/Splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path:splashView ,
      builder: ( context,  state) {
        return const SplashView();
      },
     
    ),
      GoRoute(
        path: homeView,
      builder: ( context,  state) {
        return const HomeView();
      },
     
    ),
    
     GoRoute(
      path: bookDetailsView,
      builder: ( context,  state) {
        return const BookDetailsView();
      },
     
    ),

  ],
);
} 