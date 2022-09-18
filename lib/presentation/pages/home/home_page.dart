import 'package:flutter/material.dart';
import 'package:game_commerce_flutter/presentation/widgets/global/appbar.dart';
import 'package:game_commerce_flutter/presentation/widgets/global/base_mobile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const BaseMobileScreen(child: Text('Home'));
  }
}
