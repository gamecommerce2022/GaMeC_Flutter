import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/utility/constant.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SvgPicture.asset(AssetManagers.dividerImage,
            color: Theme.of(context).indicatorColor, height: 16),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(email,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 14, letterSpacing: 1.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(phone,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 14, letterSpacing: 1.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(StringManager.openTime.tr,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 14, letterSpacing: 1.5)),
            ),
          ],
        ),
        SvgPicture.asset(
          AssetManagers.dividerImage,
          color: Theme.of(context).indicatorColor,
          height: 16,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(StringManager.about.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(letterSpacing: 2)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(StringManager.contact.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(letterSpacing: 2)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(StringManager.blog.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(letterSpacing: 1.5)),
            ),
          ],
        ),
        Container(
          color: ColorManager.footerBackground.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Center(
            child: Text(footer,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(letterSpacing: 1.25)),
          ),
        )
      ],
    );
  }
}
