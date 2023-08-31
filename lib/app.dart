import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/resources/app_routes.dart';
import 'package:flutter_bloc_demo/resources/app_style.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugInvertOversizedImages = true;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      title: 'Flutter Bloc',
      // darkTheme: AppStyles.darkTheme,
      // routes: Routes.routes, TODO : fix
      theme: AppStyles.lightTheme(),

      getPages: Routes.routes,
      initialRoute: RouteNames.splash,
    );
  }
}
