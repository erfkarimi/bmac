import 'package:bmac/view/auth/login_page/login_page.dart';
import 'package:bmac/view/auth/sign_up_page/sign_up_page.dart';
import 'package:bmac/view/wrapper/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(context) {
    setTheme();
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      actions: [
        TextButton(
          onPressed: (){
            Get.off(()=> const Wrapper());
          },
          child: const Row(
            children: [
              Text(
                "Skip",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
                ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                )
            ],
          ),
          )
      ],
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            bmcIcon(),
            const SizedBox(height: 30),
            signUpButton(),
            const SizedBox(height: 14),
            twitterButton(),
            const SizedBox(height: 14),
            googleButton(),
            const SizedBox(height: 14),
            facebookButton(),
            const SizedBox(height: 14),
            loginButton(),
            const SizedBox(height: 20),
            termsOfServiceText()
            ],
        ),
      ),
    );
  }

  Widget bmcIcon() {
    return Image.asset(
      "assets/image/bmc-logo-no-background.png",
      width: 80);
  }

  Widget signUpButton(){
    return MaterialButton(
      onPressed: (){
        Get.to(()=> const SignUpPage());
      },
      minWidth: double.infinity,
      height: 50,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color(0xffFFDD00),
      child: const Text(
        "Sign up",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800
        ),
      )
      );
  }

  Widget twitterButton(){
    return MaterialButton(
      onPressed: (){},
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide()
      ),
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/twitter_icon.png",
            width: 30,
            ),
          const SizedBox(width: 20),
          const Text(
            "Continue with Twitter",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16
            ),
          ),
          
        ],
      ),
    );
  }

  Widget googleButton(){
    return MaterialButton(
      onPressed: (){},
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide()
      ),
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/google_icon.png",
            width: 30,
            ),
          const SizedBox(width: 20),
          const Text(
            "Continue with Google",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16
            ),
          ),
          
        ],
      ),
    );
  }

  Widget facebookButton(){
    return MaterialButton(
      onPressed: (){},
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide()
      ),
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/facebook_icon.png",
            width: 30,
            ),
          const SizedBox(width: 10),
          const Text(
            "Continue with Facebook",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton(){
    return MaterialButton(
      onPressed: (){
        Get.to(()=> const LoginPage());
      },
      minWidth: double.infinity,
      child: const Text(
        "Log in",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800
        ),
      ),
    );
  }

  Widget termsOfServiceText(){
    return const Text(
      """
    By signing up, you agree to our terms and privacy policy.
          You must be at least 18 years old to start a page.
      """
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
