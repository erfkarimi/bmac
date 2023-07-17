import 'package:bmac/model/Palette/palette.dart';
import 'package:flutter/material.dart';
import '../view/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class App extends GetMaterialApp{
  App({super.key}) :
  super(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Palette.customYellow,
      fontFamily: "Lato",
      textTheme: const TextTheme(
        labelLarge: TextStyle(
          letterSpacing: 1.5,
        ) 
      )
    ),
    
    home: const SplashScreen()

  );
}