import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_size_config.dart';

class LeaderBoardRating extends StatelessWidget {
  final String rating;

  const LeaderBoardRating({
    Key key,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: appSizeConfig.screenWidth * .02),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFFFF2E0),
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            61.23,
          ), //
        ),
      ),
      child: Row(
        children: [
          Container(
            width: appSizeConfig.screenWidth * .03,
            height: appSizeConfig.screenHeight * .03,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0XFFAEB8FF), Color(0XFF7C89EA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Container(
                width: appSizeConfig.screenHeight * .06,
                height: appSizeConfig.screenWidth * .06,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0XFFAEB8FF), Color(0XFF7C89EA)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: appSizeConfig.screenWidth * .01),
                    child: Image.asset(
                      'images/star2.png',
                      height: appSizeConfig.screenHeight * .1,
                      width: appSizeConfig.screenWidth * .1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            '$rating',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: appSizeConfig.screenHeight * .02,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Color(0XFFF7986A),
            ),
          ),
        ],
      ),
    );
  }
}
