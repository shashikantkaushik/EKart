import 'package:cart/common/widgets/bottom_bar.dart';
import 'package:cart/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){

switch(routeSettings.name){
  case AuthScreen.routeName:
    return MaterialPageRoute(builder: (_)=>AuthScreen());
  case BottomBar.routeName:
    return MaterialPageRoute(builder: (_)=>BottomBar());
  case HomeScreen.routeName:
    return MaterialPageRoute(builder: (_)=>HomeScreen());
  default: return MaterialPageRoute(builder: (_)=>Scaffold(body: Center(
    child: Text('Error'),
  ),));
}
}