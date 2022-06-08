import 'dart:math';
import 'package:flutter/material.dart';

// Contains some custom functions and refactored widgets

Color generateColor (){
  int random = Random().nextInt(8);
    Map colors = {
      '0' : Colors.pink,
      '1': Colors.blueAccent,
      '2': Colors.orange,
      '3': Colors.teal,
      '4': Colors.purple,
      '5': Colors.brown,
      '6': Colors.red,
      '7': Colors.grey,
    };

  return colors['$random'];
}
