import "package:booklyapp1/core/dio/dio_helper.dart";
import "package:booklyapp1/core/utils/themes.dart";
import "package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo_imp.dart";
import "package:booklyapp1/feature/home_screen/presentaion/manger/best_seller_list/best_seller_list_cubit.dart";
import "package:booklyapp1/feature/home_screen/presentaion/manger/future_list_cubit/future_list_cubit.dart";
import "package:booklyapp1/feature/home_screen/presentaion/views/details_screen.dart";
import "package:booklyapp1/feature/home_screen/presentaion/views/home_screen.dart";
import "package:booklyapp1/feature/search_screen/presentaion/views/search_view.dart";
import "package:booklyapp1/feature/splash_screen/presentation/views/splash_view.dart";
import "package:booklyapp1/feature/splash_screen/presentation/views/widgets/splash_body.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "bloc_observer.dart";

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => FutureListCubit(HomeRepoImp())..futureListView(),),
      BlocProvider(create: (context) => BestSellerListCubit(HomeRepoImp())..bestSellerList(),),
    ],
    child: MaterialApp(
      theme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
      routes: {
        SplashView.id:(context)=>const SplashBody(),
        HomeScreen.id:(context)=>const HomeScreen(),
        DetailsScreen.id:(context)=>const DetailsScreen(),
        SearchView.id:(context)=>const SearchView()
      },
    ),
  );
  }
}
