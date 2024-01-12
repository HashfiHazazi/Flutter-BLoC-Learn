import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_red, to_light_blue, to_brown, to_indigo }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc(super.initialState);

  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    if ((event == ColorEvent.to_red)) {
      _color = Colors.red;
    } else {
      _color = (event == ColorEvent.to_light_blue)
          ? Colors.lightBlue
          : (event == ColorEvent.to_brown)
              ? Colors.brown
              : (event == ColorEvent.to_indigo)
                  ? Colors.indigo
                  : Colors.black;
      yield _color;
    }
  }
}
