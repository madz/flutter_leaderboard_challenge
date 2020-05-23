import 'package:flutter/material.dart';
import 'package:leaderboard/leaderboard/widgets/filter/filter_buttons_row.dart';
import 'package:leaderboard/leaderboard/widgets/leaderboard/leaderboard_highlight.dart';
import 'package:leaderboard/leaderboard/widgets/leaderboard/leaderboard_list.dart';
import 'package:leaderboard/leaderboard/widgets/leaderboard/top_leader.dart';
import 'package:leaderboard/leaderboard/widgets/menu/menu_icons_row.dart';

import '../../app_size_config.dart';
import '../../constants.dart';

class LeaderBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: Stack(
        children: [
          buildLeaderboardList(appSizeConfig, context),
          buildFilters(appSizeConfig, context),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: appSizeConfig.screenHeight *
                    .27, // 27% of the total height height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: AppConstants.orangeyColor,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: appSizeConfig.screenHeight *
                    .12, // 12% of the device height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: AppConstants.purpleyColor,
                ),
              ),
            ),
          ),
          buildLeaderboardHighlight(appSizeConfig),
          buildBottomMenuIcons(appSizeConfig),
          buildLeadersProfile(appSizeConfig, context),
        ],
      ),
    );
  }

  Positioned buildLeadersProfile(
      AppSizeConfig appSizeConfig, BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: appSizeConfig.screenHeight * .27,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.screenHeight * 0.001,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: appSizeConfig.screenHeight * .02),
                  child: TopLeader(
                    name: 'Sejal',
                    count: '02',
                    rating: '42%',
                    image: 'images/sejal.png',
                    radius: appSizeConfig.screenHeight * .07,
                  ),
                ),
                TopLeader(
                  name: 'Ramakrishna',
                  count: '01',
                  rating: '45%',
                  image: 'images/ramakrishna.png',
                  radius: appSizeConfig.screenHeight * .09,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: appSizeConfig.screenHeight * .02),
                  child: TopLeader(
                    name: 'Narendra',
                    count: '03',
                    rating: '38%',
                    image: 'images/narendra.png',
                    radius: appSizeConfig.screenHeight * .07,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned buildFilters(AppSizeConfig appSizeConfig, BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: appSizeConfig.screenHeight * .35, // 35% of the device height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            color: AppConstants.creamyColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: appSizeConfig.screenHeight * .27,
              left: appSizeConfig.screenHeight * .05,
              right: appSizeConfig.screenHeight * .05,
            ),
            child: FilterButtonRow(),
          ),
        ),
      ),
    );
  }

  Positioned buildLeaderboardHighlight(AppSizeConfig appSizeConfig) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: appSizeConfig.screenHeight * .17, // 17% of the device height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: AppConstants.purpleyColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: appSizeConfig.screenHeight * .08),
            child: LeaderboardHighlight(),
          ),
        ),
      ),
    );
  }

  Positioned buildBottomMenuIcons(AppSizeConfig appSizeConfig) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: appSizeConfig.screenHeight * .08, // 8% of the total height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            color: AppConstants.creamyColor,
          ),
          child: MenuIconsRow(),
        ),
      ),
    );
  }

  Positioned buildLeaderboardList(
      AppSizeConfig appSizeConfig, BuildContext context) {
    return Positioned.fill(
      child: Align(
          alignment: Alignment.center,
          child: Container(
            height: appSizeConfig.screenHeight,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: appSizeConfig.screenWidth * .025,
                right: appSizeConfig.screenWidth * .025,
                top: appSizeConfig.screenHeight * .03,
              ),
              child: ListView(
                children: [
                  // make a 30% padding from the top to not to overlap the content
                  // to other widgets as the content is on top of a Stack widget.
                  Padding(
                    padding:
                        EdgeInsets.only(top: appSizeConfig.screenHeight * .30),
                  ),
                  LeaderBoarList(
                    leaderBoardList: AppConstants().leaderBoardItems,
                  ),
                  // make a 15% padding from the bottom to not to overlap the content
                  // to other widgets as the content is on top of a Stack widget.
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: appSizeConfig.screenHeight * .15),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
