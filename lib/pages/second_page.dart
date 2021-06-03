import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/pages/provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuizProvider>(
      create: (context) => QuizProvider(),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/btn_back.png',
                      width: 38,
                      height: 38,
                    ),
                    SizedBox(width: 90),
                    Text(
                      'Get Inspired',
                      style: GoogleFonts.poppins(
                        color: Color(0xff1D1E23),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '02',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Color(0xff1D1E23),
                            ),
                        children: [
                          TextSpan(
                            text: '/',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Color(0xff88878C),
                                    ),
                            children: [
                              TextSpan(
                                text: '04',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(
                                      color: Color(0xff88878C),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Whom You are Planning \nTo Travel With?',
                          style: GoogleFonts.poppins(
                            color: Color(0xff1D1E23),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Consumer<QuizProvider>(
                  builder: (context, quizProvider, _) => Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF7F7F7),
                    ),
                    alignment: Alignment.center,
                    width: 338,
                    height: 64,
                    child: Consumer<QuizProvider>(
                      builder: (context, quizProvider, _) => Text(
                        'Solo Trip',
                        style: GoogleFonts.poppins(
                          color: quizProvider.color,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF7F7F7),
                  ),
                  alignment: Alignment.center,
                  width: 338,
                  height: 64,
                  child: Text(
                    'Family Trip',
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF7F7F7),
                  ),
                  alignment: Alignment.center,
                  width: 338,
                  height: 64,
                  child: Text(
                    'Couples Trip',
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF7F7F7),
                  ),
                  alignment: Alignment.center,
                  width: 338,
                  height: 64,
                  child: Text(
                    'Office Trip',
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  width: 328,
                  height: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Color(0xff53368A),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Go Home',
                  style: GoogleFonts.varelaRound(
                    color: Color(0xff9E9E9E),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
