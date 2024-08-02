import 'package:booklyapp1/core/utils/asset.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});


  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimaton;

  @override
  void initState() {
    super.initState();
    animationscontrol();
    timeOut();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsData.logo,height: 60,),
            const SizedBox(height: 8,),

            AnimatedBuilder(
              animation: slidingAnimaton,
              builder: (context,_) {
                return SlideTransition(
                    position: slidingAnimaton,
                child: const Text('Read Free Books',textAlign: TextAlign.center,));
              }
            )
          ],
      ),
    );
  }
  void timeOut() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context,HomeScreen.id);
    });
  }

  void animationscontrol() {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 2));
    slidingAnimaton=Tween<Offset>(end:Offset.zero ,begin:const Offset(0, 2) ).animate(animationController);
    animationController.forward();
  }
}
