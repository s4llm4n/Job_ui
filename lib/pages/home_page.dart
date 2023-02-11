import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widgets/job_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Jason Statham',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/user_pic.png',
                width: 58,
                height: 58,
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 3,
                  ),
                  child: Row(
                    children: [
                      JobCard(
                        text: 'Website Developer',
                        imageUrl: 'assets/card_category.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'Mobile Developer',
                        imageUrl: 'assets/card_category2.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'Website Developer',
                        imageUrl: 'assets/card_category_three.png',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Text(
                  'Just Posted',
                  style: GoogleFonts.poppins(
                    color: Color(0xff272C2F),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 24.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/google-icon.png',
                      width: 45,
                      height: 45,
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Front-End Developer',
                          style: jobTextStyle,
                        ),
                        Text(
                          'Google',
                          style: companyTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          SizedBox(
            height: 20,
          ),
          body(),
        ],
      ),
    );
  }
}
