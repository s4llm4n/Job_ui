import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';

class SignInPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: titleTextStyle,
              ),
              Text(
                'Build Your Career',
                style: subTitleTextStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/illustration_one.png',
                      width: 262,
                      height: 240,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}