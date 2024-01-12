import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc_library/pages/other/other_page.dart';
import './center_result.dart';
import './container_result.dart';

class BlocProviderLearn extends StatelessWidget {
  const BlocProviderLearn({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BlocProvider.value(value: myCounter, child: const OtherPage(),)));
        },
        child: const Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'BLOC PROVIDER LEARN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  myCounter.decrement();
                },
                child: Icon(Icons.remove),
              ),
              ContainerResult(),
              FloatingActionButton(
                onPressed: () {
                  myCounter.increment();
                },
                child: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
