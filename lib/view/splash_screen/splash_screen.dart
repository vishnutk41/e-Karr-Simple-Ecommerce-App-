
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerceapp/view/home_page.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5000,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                  height: 230,
                  padding: const EdgeInsets.all(32),
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child:  Image.asset('assets/splash_screen/e-Kart.png'),
                ),

        
        ],
      ),
      backgroundColor: const Color(0xFFB45CFF),
      nextScreen:const HomePage(),
      
      splashIconSize: 360,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
