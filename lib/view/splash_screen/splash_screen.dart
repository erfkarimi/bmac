import 'package:bmac/view/auth/auth_page.dart';
import 'package:bmac/view/wrapper/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override 
  SplashScreenState createState(){
    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    setTheme();
    navigation();
    super.initState();
  }

  @override 
  Widget build(context){
    return Material(
      color: const Color(0xffFFDD00),
      child: Center(
        child: Image.asset(
          "assets/image/bmc-logo-yellow.png",
          width: 180,
          ),
      ),
    );
  }

  void setTheme(){
    setState(() {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Color(0xffFFDD00),
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ));     
    });
  }

  void navigation(){
    Timer(
      const Duration(seconds: 2), (){
        Get.off(()=> const AuthPage());
      }
    );
    
  }
}