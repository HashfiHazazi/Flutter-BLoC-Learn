import 'package:flutter/material.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  Counter myCounterBloc = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'COUNTER BLOC',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*
            BLOC CONSUMER sebuah widget yg didalam nya terdapat widget gabungan dari BLOC LISTENER
            dan BLOC BULDER (JIKA MAU MENGGUNAKAN BLOC CONSUMER WAJIB MENGISI BULDER DAN JUGA LISTENER)
          */
          BlocConsumer<Counter, int>(
            builder: (context, state) {
              return Column(
                children: [
                  (state % 2 == 0)
                      ? Text('Bilangan Ganjil')
                      : Text('Bilangan Genap'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$state',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              );
            },
            listener: (context, state) {
              (state % 2 == 0)
                  ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('BILANGAN GANJIL'),
                    ))
                  : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('BILANGAN GENAP')));
            },
          ),
          /* 
            BLOC LISTENER = SEBUAH WIDGET YANG MENGAMBIL DATA YANG TERDAPAT DALAM BLOC BUILDER
            BLOC BUILDER = SEBUAH WIDGET YANG MEMBUILD ATAU MEMBUAT DATA YANG DI AMBIL DARI BLOC YG 
          */
          // BlocListener<Counter, int>(
          //   bloc: myCounterBloc,
          //   listener: (context, state) {
          //     (state % 2 == 0)
          //         ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          //             duration: Duration(seconds: 1),
          //             content: Text('BILANGAN GANJIL'),
          //           ))
          //         : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //             duration: Duration(seconds: 1),
          //             content: Text('BILANGAN GENAP')));
          //   },
          //   // listenWhen: (previous, current) {
          //   //   if (current % 2 == 0) {
          //   //     return true;
          //   //   } else {
          //   //     return false;
          //   //   }
          //   // },
          //   child: BlocBuilder<Counter, int>(
          //       bloc: myCounterBloc,
          //       // buildWhen: (previous, current) {
          //       //   if (current % 2 == 0) {
          //       //     return true;
          //       //   } else {
          //       //     return false;
          //       //   }
          //       // },
          //       builder: (context, state) {
          //         return Column(
          //           children: [
          //             (state % 2 == 0)
          //                 ? Text('Bilangan Ganjil')
          //                 : Text('Bilangan Genap'),
          //             SizedBox(
          //               height: 10,
          //             ),
          //             Text(
          //               '$state',
          //               style: TextStyle(
          //                   fontWeight: FontWeight.bold, fontSize: 24),
          //             ),
          //           ],
          //         );
          //       }),
          // ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  myCounterBloc.increment();
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  myCounterBloc.decrement();
                },
                child: Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}
