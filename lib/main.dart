import 'package:booklapp/Core/utils/approuter.dart';
import 'package:booklapp/Core/utils/service_locator.dart';
import 'package:booklapp/Features/Home/data/reops/home_repo_impl.dart';
import 'package:booklapp/Features/Home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:booklapp/Features/Home/presentation/manager/Newest_books_cubit/newest_books_cubit.dart';
import 'package:booklapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

void main() {
  runApp(const BookAPP());
}

class BookAPP extends StatelessWidget {
  const BookAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Book App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
