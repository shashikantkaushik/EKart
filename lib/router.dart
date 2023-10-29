import 'package:flutter/material.dart';

import 'features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){

switch(routeSettings.name){
  case AuthScreen.routeName:
    return MaterialPageRoute(builder: (_)=>AuthScreen());
  default: return MaterialPageRoute(builder: (_)=>Scaffold(body: Center(
    child: Text('Error'),
  ),));
}
}