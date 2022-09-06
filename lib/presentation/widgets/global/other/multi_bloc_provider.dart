import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiBlocs extends StatelessWidget {
   Widget materialApp;
   MultiBlocs({super.key, required this.materialApp});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [

    ],
  child: materialApp,
    );
  }
}
