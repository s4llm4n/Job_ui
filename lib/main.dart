import 'package:flutter/material.dart';
import 'package:job_application/pages/home_page.dart';
import 'package:job_application/pages/signin_page.dart';
import 'package:job_application/pages/signup_page.dart';
import 'package:job_application/pages/splash_page.dart';
import 'package:job_application/pages/started_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/started_page': (context) => GetStartedPage(),
        '/sign-in': (context) => SignInPages(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
