import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override 
  Widget build(context){
    setTheme();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          ),
      ),
    );
  }

  Widget buildBody(){
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Center(
        child: Column(
          children: [
            welcomeBackText(),
            const SizedBox(height: 30),
            enterYourEmailText(),
            const SizedBox(height: 8),
            emailTextField(),
            const SizedBox(height: 14),
            const Expanded(child: SizedBox(height: 10)),
            continueButton()
          ],
        ),
      ),
    );
  }

  Widget welcomeBackText(){
    return const Text(
      "Welcome back",
      style: TextStyle(
        fontWeight: FontWeight.w800, fontSize: 24),
    );
  }

  Widget enterYourEmailText(){
    return const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Enter your email",
          style: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold),
        ));
  }

  Widget emailTextField(){
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "john@doe.com"
      ),
    );
  }


  Widget continueButton(){
    return MaterialButton(
      onPressed: (){},
      height: 48,
      minWidth: double.infinity,
      elevation: 0.0,
      color: const Color(0xffFFDD00),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Text(
        "Continue",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      );
  }
  
  void setTheme(){
   SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ));
  }
}