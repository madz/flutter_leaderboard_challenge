import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_size_config.dart';
import 'highlighted_filter_button.dart';

class FilterButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighlightedFilterButton(),
          Text(
            'Last 30 days',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: appSizeConfig.screenHeight * .015,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: Color(0XFF483E46),
            ),
          ),
          Text(
            'Last 7 days',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: appSizeConfig.screenHeight * .015,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: Color(0XFF483E46),
            ),
          ),
        ],
      ),
    );
  }
}
