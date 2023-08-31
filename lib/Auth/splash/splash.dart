import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/resources/app_colors.dart';
import 'package:flutter_bloc_demo/resources/app_routes.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigateToMainScreen(); // Call the function to navigate after the splash
  }

  void navigateToMainScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed(RouteNames.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.white,
      child: Center(
        child: Container(
            height: 80,
            width: 80,
            alignment: AlignmentDirectional.center,
            child: Image(
              image: AssetImage("assets/images/logo_angler.png"),
            )),
      ),
    );
  }
}
