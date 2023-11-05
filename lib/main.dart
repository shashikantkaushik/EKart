import 'package:cart/common/widgets/bottom_bar.dart';
import 'package:cart/features/auth/screens/auth_screen.dart';
import 'package:cart/providers/user_provider.dart';
import 'package:cart/router.dart';
import  'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/global_variables.dart';
import 'package:provider/provider.dart';

import 'features/admin/admin_screen.dart';
void main() {
  runApp(MultiProvider(providers:[
  ChangeNotifierProvider(
    create: (context) => UserProvider(),
  ),
  ],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        primaryColor:GlobalVariables.secondaryColor,
        scaffoldBackgroundColor:GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      onGenerateRoute: (settings)=>generateRoute( settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
          ? const BottomBar()
          : const AdminScreen()
          : const AuthScreen(),
    );
  }
}

