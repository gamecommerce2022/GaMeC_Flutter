import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_commerce_flutter/presentation/widgets/details/home/banners.dart';
import 'package:game_commerce_flutter/presentation/widgets/global/other/base_mobile_screen.dart';
import 'package:game_commerce_flutter/presentation/widgets/global/other/spacing_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseMobileScreen(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      children:  [
        const Banners(),
        addVerticalSpace(32.h),
      ],
    ));
  }
}
