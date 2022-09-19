import 'dart:math' as math;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_commerce_flutter/core/resources/string_manager.dart';
import 'package:game_commerce_flutter/core/utility/constant.dart';
import 'package:game_commerce_flutter/data/models/navigation_model.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import 'footer.dart';
import 'footer_menu.dart';

class BaseMobileScreen extends StatefulWidget {
  final Widget child;
  const BaseMobileScreen({super.key, required this.child});

  @override
  State<BaseMobileScreen> createState() => _BaseMobileScreenState();
}

class _BaseMobileScreenState extends State<BaseMobileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final navListConsole = <NavigationModel>[
    const NavigationModel(key: 1, name: 'Nintendo', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS')
    ]),
    const NavigationModel(key: 4, name: 'PlayStation', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4')
    ]),
    const NavigationModel(key: 1, name: 'Nintendo', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS')
    ]),
    const NavigationModel(key: 4, name: 'PlayStation', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4')
    ]),
    const NavigationModel(key: 1, name: 'Nintendo', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS')
    ]),
    const NavigationModel(key: 4, name: 'PlayStation', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4')
    ]),
    const NavigationModel(key: 1, name: 'Nintendo', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS')
    ]),
    const NavigationModel(key: 4, name: 'PlayStation', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4')
    ]),
    const NavigationModel(key: 1, name: 'Nintendo', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS'),
      NavigationModel(key: 2, name: 'Nintendo Switch'),
      NavigationModel(key: 3, name: 'Nintendo 3DS')
    ]),
    const NavigationModel(key: 4, name: 'PlayStation', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4'),
      NavigationModel(key: 5, name: 'PlayStation 5'),
      NavigationModel(key: 6, name: 'PlayStation 4')
    ]),
  ];

  final navListGame = <NavigationModel>[
    const NavigationModel(
        key: 1,
        name: 'Console Game',
        child: <NavigationModel>[
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
        ]),
    const NavigationModel(key: 4, name: 'PC Game', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA')
    ]),
    const NavigationModel(
        key: 1,
        name: 'Console Game',
        child: <NavigationModel>[
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
        ]),
    const NavigationModel(key: 4, name: 'PC Game', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA')
    ]),
    const NavigationModel(
        key: 1,
        name: 'Console Game',
        child: <NavigationModel>[
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
        ]),
    const NavigationModel(key: 4, name: 'PC Game', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA')
    ]),
    const NavigationModel(
        key: 1,
        name: 'Console Game',
        child: <NavigationModel>[
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
        ]),
    const NavigationModel(key: 4, name: 'PC Game', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA')
    ]),
    const NavigationModel(
        key: 1,
        name: 'Console Game',
        child: <NavigationModel>[
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
          NavigationModel(key: 2, name: 'Pokemon'),
          NavigationModel(key: 3, name: 'God of War'),
        ]),
    const NavigationModel(key: 4, name: 'PC Game', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA'),
      NavigationModel(key: 5, name: 'Indie'),
      NavigationModel(key: 6, name: 'AAA')
    ]),
  ];

  final navListAccessory = <NavigationModel>[
    const NavigationModel(key: 1, name: 'Game Pad', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
    ]),
    const NavigationModel(key: 4, name: 'VR', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear')
    ]),
    const NavigationModel(key: 1, name: 'Game Pad', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
    ]),
    const NavigationModel(key: 4, name: 'VR', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear')
    ]),
    const NavigationModel(key: 1, name: 'Game Pad', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
    ]),
    const NavigationModel(key: 4, name: 'VR', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear')
    ]),
    const NavigationModel(key: 1, name: 'Game Pad', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
    ]),
    const NavigationModel(key: 4, name: 'VR', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear')
    ]),
    const NavigationModel(key: 1, name: 'Game Pad', child: <NavigationModel>[
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
      NavigationModel(key: 2, name: 'Nintendo Pad'),
      NavigationModel(key: 3, name: 'Sony Pad'),
    ]),
    const NavigationModel(key: 4, name: 'VR', child: <NavigationModel>[
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear'),
      NavigationModel(key: 5, name: 'Oculus'),
      NavigationModel(key: 6, name: 'Galaxy Gear')
    ]),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(AssetManagers.menuIcon,
                semanticsLabel: 'Menu',
                color: Theme.of(context).appBarTheme.foregroundColor)),
        centerTitle: true,
        title: Text('G a M e C',
            style: Theme.of(context).appBarTheme.titleTextStyle),
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
      drawerEnableOpenDragGesture: false,
      drawer: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Drawer(
            backgroundColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    leading: IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.closeDrawer();
                        },
                        iconSize: 48.r,
                        alignment: Alignment.centerLeft,
                        icon: SvgPicture.asset(AssetManagers.closeIcon,
                            semanticsLabel: 'Close',
                            color:
                                Theme.of(context).appBarTheme.foregroundColor)),
                    bottom: TabBar(
                      isScrollable: true,
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: DotIndicator(
                        color: Colors.black,
                        distanceFromCenter: 16,
                        radius: 3,
                        paintingStyle: PaintingStyle.fill,
                      ),
                      tabs: [
                        Tab(
                            child: Text(StringManager.game.tr.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        letterSpacing: 2, fontSize: 18))),
                        Tab(
                            child: Text(StringManager.console.tr.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        letterSpacing: 2, fontSize: 18))),
                        Tab(
                            child: Text(
                                StringManager.accessory.tr.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(letterSpacing: 2, fontSize: 18)))
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: navListGame.length,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.w, vertical: 24.h),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.h),
                                    child: ExpandablePanel(
                                        header: Text(navListGame[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium
                                                ?.copyWith(
                                                    fontSize: 18.sp,
                                                    letterSpacing: 2)),
                                        theme: const ExpandableThemeData(
                                          expandIcon: Icons.expand_more_rounded,
                                          collapseIcon:
                                              Icons.expand_less_rounded,
                                          iconColor: Colors.grey,
                                          iconSize: 28.0,
                                          iconPadding: EdgeInsets.only(
                                              bottom: 12, right: 12),
                                          iconRotationAngle: math.pi,
                                        ),
                                        collapsed:
                                            SizedBox.fromSize(size: Size.zero),
                                        expanded: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              navListGame[index].child?.length,
                                          itemBuilder: (context, indexChild) {
                                            return InkWell(
                                              onTap: () {},
                                              splashColor:
                                                  Theme.of(context).splashColor,
                                              child: ListTile(
                                                title: Text(
                                                    navListGame[index]
                                                        .child![indexChild]
                                                        .name,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                            letterSpacing: 1.5,
                                                            fontSize: 18,
                                                            color: Colors.grey
                                                                .shade600)),
                                              ),
                                            );
                                          },
                                        )),
                                  );
                                }),
                            const FooterMenu(),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: navListConsole.length,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.w, vertical: 24.h),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.h),
                                    child: ExpandablePanel(
                                        header: Text(navListConsole[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium
                                                ?.copyWith(
                                                    fontSize: 18.sp,
                                                    letterSpacing: 2)),
                                        theme: const ExpandableThemeData(
                                          expandIcon: Icons.expand_more_rounded,
                                          collapseIcon:
                                              Icons.expand_less_rounded,
                                          iconColor: Colors.grey,
                                          iconSize: 28.0,
                                          iconPadding: EdgeInsets.only(
                                              bottom: 12, right: 12),
                                          iconRotationAngle: math.pi,
                                        ),
                                        collapsed:
                                            SizedBox.fromSize(size: Size.zero),
                                        expanded: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: navListConsole[index]
                                              .child
                                              ?.length,
                                          itemBuilder: (context, indexChild) {
                                            return InkWell(
                                              onTap: () {},
                                              splashColor:
                                                  Theme.of(context).splashColor,
                                              child: ListTile(
                                                title: Text(
                                                    navListConsole[index]
                                                        .child![indexChild]
                                                        .name,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                            letterSpacing: 1.5,
                                                            fontSize: 18,
                                                            color: Colors.grey
                                                                .shade600)),
                                              ),
                                            );
                                          },
                                        )),
                                  );
                                }),
                            const FooterMenu(),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: navListAccessory.length,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.w, vertical: 24.h),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.h),
                                    child: ExpandablePanel(
                                        header: Text(
                                            navListAccessory[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium
                                                ?.copyWith(
                                                    fontSize: 18.sp,
                                                    letterSpacing: 2)),
                                        theme: const ExpandableThemeData(
                                          expandIcon: Icons.expand_more_rounded,
                                          collapseIcon:
                                              Icons.expand_less_rounded,
                                          iconColor: Colors.grey,
                                          iconSize: 28.0,
                                          iconPadding: EdgeInsets.only(
                                              bottom: 12, right: 12),
                                          iconRotationAngle: math.pi,
                                        ),
                                        collapsed:
                                            SizedBox.fromSize(size: Size.zero),
                                        expanded: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: navListAccessory[index]
                                              .child
                                              ?.length,
                                          itemBuilder: (context, indexChild) {
                                            return InkWell(
                                              onTap: () {},
                                              splashColor:
                                                  Theme.of(context).splashColor,
                                              child: ListTile(
                                                title: Text(
                                                    navListAccessory[index]
                                                        .child![indexChild]
                                                        .name,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                            letterSpacing: 1.5,
                                                            fontSize: 18,
                                                            color: Colors.grey
                                                                .shade600)),
                                              ),
                                            );
                                          },
                                        )),
                                  );
                                }),
                            const FooterMenu(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.child,
            const Footer(),
          ],
        ),
      ),
    );
  }
}
