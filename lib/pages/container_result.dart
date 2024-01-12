import 'package:flutter/material.dart';
import 'package:flutter_bloc_library/bloc/counter_cubit.dart';
import 'package:flutter_bloc_library/pages/center_result.dart';

class ContainerResult extends StatelessWidget {
  const ContainerResult({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: CenterResult(),
    );
  }
}