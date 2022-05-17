import 'dart:math';
import 'package:flutter/material.dart';

Color generateColor (){
  int random = Random().nextInt(5);
    Map colors = {
      '0' : Colors.pink,
      '1': Colors.blueAccent,
      '2': Colors.orange,
      '3': Colors.teal,
      '4': Colors.purple
    };

  return colors['$random'];
}
