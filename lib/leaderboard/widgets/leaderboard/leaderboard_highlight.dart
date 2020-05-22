import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_size_config.dart';
import 'leaderboard_rating.dart';

class LeaderboardHighlight extends StatelessWidget {
  const LeaderboardHighlight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: appSizeConfig.screenWidth * .05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/rama.png'),
                  radius: appSizeConfig.screenHeight * .025,
                ),
                SizedBox(
                  width: appSizeConfig.screenWidth * .025,
                ),
                Text(
                  'Ramakrishna Shetty',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: appSizeConfig.screenHeight * .0175,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            LeaderBoardRating(
              rating: 'N/A',
            ),
          ],
        ),
      ),
    );
  }
}
