import 'dart:math';
import 'package:flutter/material.dart';

Color generateColor (){
  int random = Random().nextInt(10);
    Map colors = {
      '0' : Colors.pink,
      '1': Colors.blueAccent,
      '2': Colors.deepOrange,
      '3': Colors.teal
    };

  return colors['$random'];
}
