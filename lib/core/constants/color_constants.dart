import 'dart:math';

import 'package:flutter/material.dart';

enum ColorConstants {
  Red(Colors.red),
  Blue(Colors.blue),
  Green(Colors.green);

  const ColorConstants(this.color);
  final Color color;
}
