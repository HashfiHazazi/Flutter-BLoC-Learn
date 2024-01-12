import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc_library/pages/404/not_found.dart';
import 'package:flutter_bloc_library/pages/bloc_provider_again.dart';
import 'package:flutter_bloc_library/pages/provider_context/other.dart';

class MyRouter {
  final Counter myCounterRoute = Counter();
  Route onRoute(RouteSettings routePages) {
    switch (routePages.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounterRoute,
            child: BlocProviderAgain(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounterRoute,
            child: Other(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounterRoute,
            child: NotFound(),
          ),
        );
    }
  }
}
