import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_size_config.dart';
import 'leaderboard_rating.dart';

class TopLeader extends StatelessWidget {
  final String name;
  final String image;
  final String count;
  final String rating;
  final double radius;
  const TopLeader({
    Key key,
    this.name,
    this.image,
    this.count,
    this.rating,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: EdgeInsets.only(top: appSizeConfig.screenHeight * .0125),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('$image'),
                radius: radius,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(appSizeConfig.screenWidth * .025),
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
                        child: Text(
                          '$count',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: appSizeConfig.screenHeight * .017,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '$name',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: appSizeConfig.screenHeight * .0175,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              color: Color(0XFF5B4966),
            ),
          ),
          SizedBox(
            height: appSizeConfig.screenHeight * .005,
          ),
          LeaderBoardRating(
            rating: '$rating',
          ),
        ],
      ),
    );
  }
}
