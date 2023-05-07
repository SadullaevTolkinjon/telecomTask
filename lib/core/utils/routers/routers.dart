import 'package:flutter/material.dart';
import 'package:new_architecture/core/constants/route_name/navigator_const.dart';
import 'package:new_architecture/presentation/home/home_page.dart';
import 'package:new_architecture/presentation/second_page/second_page.dart';

class OngenerateRoutes {
  static final OngenerateRoutes _instance = OngenerateRoutes._init();

  static OngenerateRoutes get instance => _instance;

  OngenerateRoutes._init();

  Route? routeGenerator(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case NavigatorConst.home:
        return sampleRoute(
          const HomePage(),
        );
      case NavigatorConst.secondPage:
        return sampleRoute(
          const SecondPage(),
        );
    }
    return null;
  }

  sampleRoute(Widget route) {
    return MaterialPageRoute(builder: (context) => route);
  }
}
