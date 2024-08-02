import "package:booklyapp1/core/utils/themes.dart";
import "package:booklyapp1/feature/home_screen/presentaion/views/details_screen.dart";
import "package:booklyapp1/feature/home_screen/presentaion/views/home_screen.dart";
import "package:booklyapp1/feature/splash_screen/presentation/views/splash_view.dart";
import "package:booklyapp1/feature/splash_screen/presentation/views/widgets/splash_body.dart";
import "package:flutter/material.dart";

void main()
{
 runApp(MyApp());
}

class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: MyThemes.darkTheme,
    debugShowCheckedModeBanner: false,
    initialRoute: SplashView.id,
    routes: {
      SplashView.id:(context)=>const SplashBody(),
      HomeScreen.id:(context)=>const HomeScreen(),
      DetailsScreen.id:(context)=>const DetailsScreen()
    },
  );
  }
}
