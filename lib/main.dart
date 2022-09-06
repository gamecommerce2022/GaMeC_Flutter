

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:game_commerce_flutter/core/app.dart';
import 'package:get_storage/get_storage.dart';

import 'core/utility/injector.dart';

Future<void> main() async {
  Widget myApp = Phoenix(child: const GameCommerceApp());
  runApp(myApp);
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await GetStorage.init();
  if (!kIsWeb) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
}
