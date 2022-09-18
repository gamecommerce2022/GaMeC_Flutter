import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_commerce_flutter/config/themes/theme_service.dart';
import 'package:game_commerce_flutter/core/resources/asset_manager.dart';
import 'package:game_commerce_flutter/core/resources/color_manager.dart';
import 'package:game_commerce_flutter/core/translations/translations.dart';
import 'package:game_commerce_flutter/core/utility/constant.dart';
import 'package:game_commerce_flutter/presentation/pages/home/home_page.dart';
import 'package:game_commerce_flutter/presentation/widgets/global/other/multi_bloc_provider.dart';
import 'package:get/get.dart';

import '../config/themes/app_theme.dart';
import 'translations/application_language.dart';

class GameCommerceApp extends StatefulWidget {
  const GameCommerceApp({Key? key}) : super(key: key);

  @override
  State<GameCommerceApp> createState() => _MyAppState();
}

class _MyAppState extends State<GameCommerceApp> {
  String? myId;
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;
    isThatMobile =
        platform == TargetPlatform.iOS || platform == TargetPlatform.android;
    isThatAndroid = platform == TargetPlatform.android;
    // return MultiBlocs(materialApp: materialApp(context));
    return materialApp(context);
  }

  Widget materialApp(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: (controller) {
          return ScreenUtilInit(
              designSize: const Size(375, 797),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, __) {
                return GetMaterialApp(
                  translations: Translation(),
                  locale: Locale(controller.appLocale),
                  fallbackLocale: const Locale('en'),
                  navigatorKey: navigatorKey,
                  debugShowCheckedModeBanner: false,
                  title: 'GaMeC',
                  theme: AppTheme.light,
                  darkTheme: AppTheme.dark,
                  themeMode: ThemeService().theme,
                  home: AnimatedSplashScreen(
                    splash: AssetManagers.splashScreen,
                    splashIconSize: double.infinity,
                    backgroundColor: ColorManager.purple300,
                    splashTransition: SplashTransition.scaleTransition,
                    nextScreen: const HomePage(),
                  ),
                );
              });
        });
  }
}
