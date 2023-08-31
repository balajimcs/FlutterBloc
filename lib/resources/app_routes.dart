import 'package:flutter_bloc_demo/Auth/login/login_page.dart';
import 'package:get/get.dart';

import '../Auth/splash/splash.dart';

class Routes {
  //this is to prevent anyone from instantiating this object
  Routes._();

  /// routes list
  static List<GetPage<dynamic>> routes = [
    GetPage(name: RouteNames.splash, page: () => Splash()),
    GetPage(name: RouteNames.login, page: () => LoginAuth()),
    
  ];
}

class RouteNames {
  /// Your password screen
  static const splash = '/splash';
  static const login = '/login_page';
  
}
