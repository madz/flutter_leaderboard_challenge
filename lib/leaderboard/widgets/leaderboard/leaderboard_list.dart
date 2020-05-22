import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaderboard/leaderboard/model/leaderboard_model.dart';

import '../../../app_size_config.dart';
import 'leaderboard_rating.dart';

class LeaderBoarList extends StatelessWidget {
  final List<LeaderBoardModel> leaderBoardList;

  const LeaderBoarList({
    Key key,
    this.leaderBoardList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      children: _buildLeaderBoardItems(appSizeConfig),
    );
  }

  List<Widget> _buildLeaderBoardItems(AppSizeConfig appSizeConfig) {
    List<Widget> list = [];
    for (final LeaderBoardModel leaderBoardModel in leaderBoardList) {
      list.add(
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: appSizeConfig.screenHeight * .015,
              horizontal: appSizeConfig.screenHeight * .03),
          child: LeaderBoarRow(
            leaderBoardModel: leaderBoardModel,
          ),
        ),
      );
    }

    return list;
  }
}

class LeaderBoarRow extends StatelessWidget {
  final LeaderBoardModel leaderBoardModel;
  const LeaderBoarRow({
    Key key,
    this.leaderBoardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeaderBoardName(
          count: leaderBoardModel.count,
          name: leaderBoardModel.name,
          profilePic: leaderBoardModel.profilePic,
        ),
        LeaderBoardRating(
          rating: leaderBoardModel.rating,
        ),
      ],
    );
  }
}

class LeaderBoardName extends StatelessWidget {
  final int count;
  final String name;
  final String profilePic;

  const LeaderBoardName({
    Key key,
    this.count,
    this.name,
    this.profilePic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      children: [
        Text(
          '$count.',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Color(0XFF1B1B1B),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('$profilePic'),
            radius: appSizeConfig.screenHeight * .02,
          ),
        ),
        Text(
          '$name',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: appSizeConfig.screenHeight * .0175,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            color: Color(0XFF1B1B1B),
          ),
        ),
      ],
    );
  }
}
