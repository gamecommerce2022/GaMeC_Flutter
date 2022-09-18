import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_commerce_flutter/core/resources/string_manager.dart';
import 'package:game_commerce_flutter/core/utility/constant.dart';
import 'package:get/get.dart';

import '../../../core/resources/asset_manager.dart';
import '../../../core/resources/color_manager.dart';

class BaseMobileScreen extends StatelessWidget {
  final Widget child;
  const BaseMobileScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetManagers.menuIcon,
                semanticsLabel: 'Menu',
                color: Theme.of(context).appBarTheme.foregroundColor)),
        centerTitle: true,
        title:
            Text('G a M e C', style: Theme.of(context).appBarTheme.titleTextStyle),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AssetManagers.searchIcon,
                  semanticsLabel: 'Search',
                  color: Theme.of(context).appBarTheme.foregroundColor)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AssetManagers.shoppingBagIcon,
                  semanticsLabel: 'Shopping Cart',
                  color: Theme.of(context).appBarTheme.foregroundColor)),
        ],
        elevation: Theme.of(context).appBarTheme.elevation,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            child,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AssetManagers.twitterIcon,
                            semanticsLabel: 'Twitter',
                            color: Theme.of(context).appBarTheme.foregroundColor)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AssetManagers.instagramIcon,
                            semanticsLabel: 'Instagram',
                            color: Theme.of(context).appBarTheme.foregroundColor)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AssetManagers.youtubeIcon,
                            semanticsLabel: 'Youtube',
                            color: Theme.of(context).appBarTheme.foregroundColor)),
                  ],
                ),
                SvgPicture.asset(AssetManagers.dividerImage, color: Theme.of(context).indicatorColor),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(email, style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(phone, style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(StringManager.openTime.tr, style: Theme.of(context).textTheme.displaySmall),
                    ),
                  ],
                ),
                SvgPicture.asset(AssetManagers.dividerImage, color: Theme.of(context).indicatorColor),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Text(StringManager.about.tr, style: Theme.of(context).textTheme.titleMedium),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Text(StringManager.contact.tr, style: Theme.of(context).textTheme.titleMedium),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Text(StringManager.blog.tr, style: Theme.of(context).textTheme.titleMedium),
                    ),
                  ],
                ),
                Container(
                  color: ColorManager.footerBackground.withOpacity(0.1),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Center(
                    child: Text(footer, style: Theme.of(context).textTheme.displaySmall),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
