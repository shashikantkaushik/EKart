import 'package:cart/features/auth/screens/auth_screen.dart';
import 'package:cart/router.dart';
import  'package:flutter/material.dart';
import 'constants/global_variables.dart';
void main() {
  runApp(const MyApp());
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
      home: AuthScreen()
    );
  }
}

