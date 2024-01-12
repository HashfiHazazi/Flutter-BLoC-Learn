import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc_library/pages/calclulator_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_library/pages/bloc_provider_page.dart';
import 'package:flutter_bloc_library/pages/bloc_provider_again.dart';
import 'package:flutter_bloc_library/pages/counter_bloc_page.dart';
import 'package:flutter_bloc_library/pages/provider_context/other.dart';
import 'package:flutter_bloc_library/routes/my_route.dart';

import 'bloc/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC With Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      // routes: {
      //   "/home": (context) => BlocProvider.value(
      //         value: myCounterMain,
      //         child: BlocProviderAgain(),
      //       ),
      //   "/other": (context) => BlocProvider.value(
      //         value: myCounterMain,
      //         child: Other(),
      //       )
      // },
      onGenerateRoute: router.onRoute,
    );
  }
}