import 'package:flutter/material.dart';
import 'package:flutter_bloc_library/pages/provider_context/red.dart';

class Amber extends StatelessWidget {
  const Amber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
      child: Red()
    );
  }
}

