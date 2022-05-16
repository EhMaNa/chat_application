import 'dart:math';
import 'package:flutter/material.dart';

Color generateColor (){
  int random = Random().nextInt(10);
    Map colors = {
      '1' : Colors.pink,
      '2': Colors.blueAccent
    };

  return colors['$random'];
}
