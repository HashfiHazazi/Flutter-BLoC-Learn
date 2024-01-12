import 'package:flutter/material.dart';
import 'package:flutter_bloc_library/pages/provider_context/center.dart';

class Red extends StatelessWidget {
  const Red({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      width: 150,
      height: 150,
      decoration: BoxDecoration(color: Colors.red),
      child: CenterData()
    );
  }
}

