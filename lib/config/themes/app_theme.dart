
import 'package:flutter/material.dart';

import '../../core/resources/color_manager.dart';
import '../../core/resources/font_manager.dart';
import '../../core/resources/style_manager.dart';
import '../../core/utility/constant.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primaryColor: ColorManager.white,
      primaryColorLight: ColorManager.lightGrey,
      primarySwatch: Colors.grey,
      hintColor: ColorManager.lowOpacityGrey,
      shadowColor: ColorManager.veryLowOpacityGrey,
      bottomAppBarColor: ColorManager.black26,
      focusColor: ColorManager.black,
      disabledColor: ColorManager.black54,
      dialogBackgroundColor: ColorManager.black87,
      hoverColor:
      isThatMobile ? ColorManager.black45 : ColorManager.transparent,
      indicatorColor: ColorManager.black87,
      dividerColor: ColorManager.black12,
      backgroundColor: ColorManager.lightBlack,
      scaffoldBackgroundColor:
      isThatMobile ? ColorManager.white : ColorManager.customGreyForWeb,
      iconTheme: const IconThemeData(color: ColorManager.black38),
      chipTheme:
      const ChipThemeData(backgroundColor: ColorManager.veryLowOpacityGrey),
      errorColor: ColorManager.black,
      canvasColor: ColorManager.transparent,
      splashColor: ColorManager.white,
      appBarTheme: AppBarTheme(
        elevation: 0,
        foregroundColor: ColorManager.black,
        backgroundColor: ColorManager.white,
        shadowColor: ColorManager.lowOpacityGrey,
        iconTheme: const IconThemeData(color: ColorManager.black),
        titleTextStyle:
        getNormalStyle(fontSize: FontSize.s20, color: ColorManager.black),
      ),
      textTheme: TextTheme(
        bodyLarge: getNormalStyle(color: ColorManager.black, fontSize: FontSize.s48),
        bodyMedium: getNormalStyle(color: ColorManager.imageGrey, fontSize: FontSize.s24),
        bodySmall: getNormalStyle(color: ColorManager.grey, fontSize: FontSize.s16),
        headlineLarge: getBoldStyle(color: ColorManager.shimmerLightGrey, fontSize: FontSize.s28),
        headlineMedium: getBoldStyle(color: ColorManager.shimmerLightGrey, fontSize: FontSize.s24),
        headlineSmall: getBoldStyle(color: ColorManager.shimmerLightGrey, fontSize: FontSize.s20),
        titleLarge: getMediumStyle(color: Colors.black87, fontSize: FontSize.s20),
        titleMedium: getMediumStyle(color: ColorManager.black87, fontSize: FontSize.s16),
        titleSmall: getMediumStyle(color: ColorManager.black87, fontSize: FontSize.s12),
        displayLarge: getLightStyle(color: ColorManager.grey, fontSize: FontSize.s20),
        displayMedium: getLightStyle(color: ColorManager.black, fontSize: FontSize.s16),
        displaySmall: getLightStyle(color: ColorManager.black, fontSize: FontSize.s12),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      primaryColor: ColorManager.black,
      primaryColorLight: ColorManager.black54,
      primarySwatch: Colors.grey,
      hintColor: ColorManager.darkGray,
      shadowColor: ColorManager.darkGray,
      focusColor: ColorManager.white,
      dialogBackgroundColor: ColorManager.white,
      hoverColor: isThatMobile ? ColorManager.grey : ColorManager.transparent,
      indicatorColor: ColorManager.grey,
      dividerColor: ColorManager.grey,
      bottomAppBarColor: ColorManager.grey,
      iconTheme: const IconThemeData(color: ColorManager.white),
      chipTheme:
      const ChipThemeData(backgroundColor: ColorManager.lightDarkGray),
      backgroundColor: ColorManager.darkGray,
      errorColor: ColorManager.grey,
      disabledColor: ColorManager.white,
      scaffoldBackgroundColor: ColorManager.black,
      canvasColor: ColorManager.transparent,
      splashColor: ColorManager.darkGray,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: const IconThemeData(color: ColorManager.white),
        foregroundColor: ColorManager.white,
        backgroundColor: ColorManager.black,
        shadowColor: ColorManager.lowOpacityGrey,
        titleTextStyle:
        getNormalStyle(fontSize: FontSize.s20, color: ColorManager.white),
      ),
      textTheme: TextTheme(
        bodyLarge: getNormalStyle(color: ColorManager.white, fontSize: FontSize.s48),
        bodyMedium: getNormalStyle(color: ColorManager.darkGray, fontSize: FontSize.s24),
        bodySmall: getNormalStyle(color: ColorManager.lightGrey, fontSize: FontSize.s16),
        headlineLarge: getBoldStyle(color: Colors.grey[500]!, fontSize: FontSize.s28),
        headlineMedium: getBoldStyle(color: Colors.grey[500]!, fontSize: FontSize.s24),
        headlineSmall: getBoldStyle(color: Colors.grey[500]!, fontSize: FontSize.s20),
        titleLarge: getMediumStyle(color: ColorManager.shimmerDarkGrey, fontSize: FontSize.s20),
        titleMedium: getMediumStyle(color: ColorManager.darkGray, fontSize: FontSize.s16),
        titleSmall: getMediumStyle(color: ColorManager.darkGray, fontSize: FontSize.s12),
        displayLarge: getLightStyle(color: ColorManager.grey, fontSize: FontSize.s20),
        displayMedium: getLightStyle(color: ColorManager.white, fontSize: FontSize.s16),
        displaySmall: getLightStyle(color: ColorManager.white, fontSize: FontSize.s12),
      ),
    );
  }
}
