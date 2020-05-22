import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'leaderboard/page/leaderboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LeaderBoardPage(),
    );
  }
}
