import 'package:flutter/material.dart';
import 'dart:math';

late Random random;
const Color color1 = Colors.red;
const Color color2 = Colors.blue;
const Color color3 = Colors.green;
const Color color4 = Colors.yellow;
const Color color5 = Colors.purple;
const Color color6 = Colors.pink;
const Color color7 = Colors.blueGrey;

List<Color> colors = [color1, color2, color3, color4, color5, color6, color7];
Color getRandomColor() {
  return colors[random.nextInt(7)];
}
