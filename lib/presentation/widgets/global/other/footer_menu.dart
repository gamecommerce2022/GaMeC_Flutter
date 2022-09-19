import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/utility/constant.dart';

class FooterMenu extends StatelessWidget {
  const FooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: SvgPicture.asset(AssetManagers.callIcon),
          title: Text(phone, style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 18, letterSpacing: 1.5)),
        ),
        ListTile(
          leading: SvgPicture.asset(AssetManagers.locationIcon),
          title: Text('Store Locator', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 18, letterSpacing: 1.5)),
        ),
        SvgPicture.asset(AssetManagers.dividerImage,
            color: Theme.of(context).indicatorColor),
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetManagers.twitterIcon,
                    semanticsLabel: 'Twitter',
                    color:
                    Theme.of(context).appBarTheme.foregroundColor)),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetManagers.instagramIcon,
                    semanticsLabel: 'Instagram',
                    color:
                    Theme.of(context).appBarTheme.foregroundColor)),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetManagers.youtubeIcon,
                    semanticsLabel: 'Youtube',
                    color:
                    Theme.of(context).appBarTheme.foregroundColor)),
          ],
        ),
      ],
    );
  }
}
