import 'package:flutter/material.dart';

import '../../../app_size_config.dart';
import 'highlighted_icon_button.dart';

class MenuIconsRow extends StatelessWidget {
  const MenuIconsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: appSizeConfig.screenWidth * .13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              print('home button click!');
            },
            child: Image.asset(
              'icons/home_icon.png',
              height: appSizeConfig.screenHeight * .03,
              width: appSizeConfig.screenWidth * .045,
              fit: BoxFit.cover,
            ),
          ),
          HighlightedIconButton(),
          GestureDetector(
            onTap: () {
              print('burger menu button click!');
            },
            child: Image.asset(
              'icons/burger_icon.png',
              height: appSizeConfig.screenHeight * .03,
              width: appSizeConfig.screenWidth * .045,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
