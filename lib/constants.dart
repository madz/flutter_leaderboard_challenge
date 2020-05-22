import 'package:flutter/material.dart';

import 'leaderboard/model/leaderboard_model.dart';

class AppConstants {
  static const purpleyColor = Color(0XFF5B4966);
  static const orangeyColor = Color(0XFFFFD79F);
  static const creamyColor = Color(0XFFFFF2E0);

  final leaderBoardItems = List<LeaderBoardModel>();

  AppConstants() {
    LeaderBoardModel model1 = LeaderBoardModel(
      count: 4,
      name: 'Roxie Wolfe',
      profilePic: 'images/roxie.png',
      rating: '36%',
    );
    LeaderBoardModel model2 = LeaderBoardModel(
      count: 5,
      name: 'Devin Hill',
      profilePic: 'images/devin.png',
      rating: '35%',
    );
    LeaderBoardModel model3 = LeaderBoardModel(
      count: 6,
      name: 'Isaiah Vala',
      profilePic: 'images/isaiah.png',
      rating: '27%',
    );
    LeaderBoardModel model4 = LeaderBoardModel(
      count: 7,
      name: 'Rebecca welch',
      profilePic: 'images/rebecca.png',
      rating: '23%',
    );
    LeaderBoardModel model5 = LeaderBoardModel(
      count: 8,
      name: 'Madge Worv',
      profilePic: 'images/madge.png',
      rating: '19%',
    );
    LeaderBoardModel model6 = LeaderBoardModel(
      count: 9,
      name: 'Caroline Dron',
      profilePic: 'images/caroline.png',
      rating: '17%',
    );

    LeaderBoardModel model7 = LeaderBoardModel(
      count: 10,
      name: 'Caroline Dron',
      profilePic: 'images/caroline.png',
      rating: '17%',
    );

    leaderBoardItems.add(model1);
    leaderBoardItems.add(model2);
    leaderBoardItems.add(model3);
    leaderBoardItems.add(model4);
    leaderBoardItems.add(model5);
    leaderBoardItems.add(model6);
    leaderBoardItems.add(model7);
  }
}
