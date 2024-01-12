import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class CalculateCubit extends Cubit<int> {
  CalculateCubit() : super(0);
  void addiction(int _addiction) => emit(state + _addiction);

  void subtraction(int _subValue) => emit(state - _subValue);

  void multiplication(int _multiValue) => emit(state * _multiValue);

  void division(int _divValue) => emit(state ~/ _divValue);
}

class _CalculatorPageState extends State<CalculatorPage> {
  CalculateCubit calculateYeild = CalculateCubit();
  String value1 = '';
  String value2 = '10';
  int? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Calculator by hashfi',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder(
              stream: calculateYeild.stream,
              builder: (context, snapshot) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${snapshot.data}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 28.0),
                    ),
                    Text(
                      '$value1',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 28.0),
                    )
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value1 = '$value1' + '1';
                    setState(() {});
                  },
                  child: Text('1'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var two = 2;
                    value1 = '$value1' + '2';
                    setState(() {});
                  },
                  child: Text('2'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var three = 3;
                    value1 = '$value1' + '3';
                    setState(() {});
                  },
                  child: Text('3'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var four = 4;
                    value1 = '$value1' + '4';
                    setState(() {});
                  },
                  child: Text('4'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var five = 5;
                    value1 = '$value1' + '5';
                    setState(() {});
                  },
                  child: Text('5'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var six = 6;
                    value1 = '$value1' + '6';
                    setState(() {});
                  },
                  child: Text('6'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var seven = 7;
                    value1 = '$value1' + '7';
                    setState(() {});
                  },
                  child: Text('7'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var eight = 8;
                    value1 = '$value1' + '8';
                    setState(() {});
                  },
                  child: Text('8'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    var nine = 9;
                    value1 = '$value1' + '9';
                    setState(() {});
                  },
                  child: Text('9'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var zero = 0;
                    value1 = '$value1' + '0';
                    setState(() {});
                  },
                  child: Text('0'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculateYeild.addiction(10);
                  },
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculateYeild.subtraction(10);
                  },
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calculateYeild.multiplication(10);
                    int val1 = int.parse(value1);
                    int val2 = int.parse(value2);
                    return Calculator('+', val1, val2, result!);
                  },
                  child: Text('X'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculateYeild.division(10);
                  },
                  child: Text('/'),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('='),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(24)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void Calculator(String operator, int value1, int value2, int hasil) {
  if (operator == '+') {
    int? result;
    hasil = value1 + value2;
  }
}
