import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';

class CenterResult extends StatelessWidget {
  const CenterResult({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounterBloc = BlocProvider.of<Counter>(context);
    return Center(
      child: BlocBuilder(
          bloc: myCounterBloc,
          builder: (context, state) {
            return Text(
              '$state',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            );
          }),
    );
  }
}
