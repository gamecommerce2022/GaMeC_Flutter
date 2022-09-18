import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_commerce_flutter/core/resources/asset_manager.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset(AssetManagers.menuIcon, semanticsLabel: 'Menu icon', color: Theme.of(context).appBarTheme.foregroundColor),
      title: Text('GaMeC', style: Theme.of(context).appBarTheme.titleTextStyle),
      actions: [
        
      ],
    );
  }

  @override
  Size get preferredSize => Size(375.w, 60.h);
}
