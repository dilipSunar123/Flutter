import 'package:flutter/material.dart';
import 'package:login_app/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/utils/routes.dart';
import 'package:login_app/widgets/themes.dart';

import 'Pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MyRoutes.homeRoute,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        '/': (context) => const Login(), 
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const Login(),  
      }
    );
  }
}