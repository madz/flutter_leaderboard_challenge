import 'package:flutter/foundation.dart';

class LeaderBoardModel {
  final int count;
  final String name;
  final String profilePic;
  final String rating;
  LeaderBoardModel({
    @required this.count,
    @required this.name,
    @required this.profilePic,
    @required this.rating,
  });
}
