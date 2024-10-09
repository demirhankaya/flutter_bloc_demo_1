import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo_1/core/constants/color_constants.dart';

class ColorsCubit extends Cubit<Color> {
  ColorsCubit() : super(Colors.black);

  void changeColor() {
    int colorNum = Random().nextInt(3);

    if (colorNum == 0) {
      emit(ColorConstants.Red.color);
    } else if (colorNum == 1) {
      emit(ColorConstants.Blue.color);
    } else if (colorNum == 2) {
      emit(ColorConstants.Green.color);
    } else {
      emit(Colors.black);
    }
  }
}
