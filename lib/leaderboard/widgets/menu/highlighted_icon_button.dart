import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_size_config.dart';

class HighlightedIconButton extends StatelessWidget {
  const HighlightedIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFD79F),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0XFFFFD79F),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            61.23,
          ), //
        ),
      ),
      child: GestureDetector(
        onTap: () {
          print('Leader board button click!');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: appSizeConfig.screenHeight * .005,
            horizontal: appSizeConfig.screenWidth * .05,
          ),
          child: Row(
            children: [
              Image.asset(
                'icons/leaderboard_icon.png',
                height: appSizeConfig.screenHeight * .035,
                width: appSizeConfig.screenWidth * .045,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 4.0),
                child: Text(
                  'Leader board',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: appSizeConfig.screenHeight * .015,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0XFF150031),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
