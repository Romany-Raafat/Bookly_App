import 'package:bookly_app_project/constants.dart';
import 'package:bookly_app_project/core/utils/app_router.dart';
import 'package:bookly_app_project/core/utils/service_locator.dart';
import 'package:bookly_app_project/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app_project/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app_project/features/home/presentation/manager/newsest_books/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..featuredBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewstBooksCubit(getIt.get<HomeRepoImpl>())..newstBooks();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData(brightness: Brightness.dark).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
