import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounterOther = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Data Provider Result',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )),
      body: Center(
          child: BlocBuilder(
              bloc: myCounterOther,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                );
              })),
    );
  }
}
