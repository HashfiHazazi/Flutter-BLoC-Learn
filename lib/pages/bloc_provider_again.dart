import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc_library/pages/provider_context/amber.dart';
import 'package:flutter_bloc_library/pages/provider_context/other.dart';

class BlocProviderAgain extends StatelessWidget {
  const BlocProviderAgain({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounterBloc = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLOC PROVIDER RE-LEARN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                height: 90,
                child: Material(
                  color: Colors.lightBlue,
                  child: InkWell(
                      onTap: () {
                        myCounterBloc.decrement();
                      },
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              Amber(),
              SizedBox(
                width: 70,
                height: 90,
                child: Material(
                  color: Colors.lightBlue,
                  child: InkWell(
                      onTap: () {
                        myCounterBloc.increment();
                      },
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* 
              DI BAWAH INI ADALAH ANONYMOUS ROUTE
          */
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => BlocProvider.value(
          //           value: myCounterBloc,
          //           child: const Other(),
          //         )));

          /* 
              DI BAWAH INI ADALAH NAMED ROUTE ACCESS
          */
          Navigator.of(context).pushNamed('/other');
        },
        child: Icon(Icons.arrow_circle_right_sharp),
      ),
    );
  }
}
