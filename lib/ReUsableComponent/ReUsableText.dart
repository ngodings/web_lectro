import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: non_constant_identifier_names
Widget LargeBoldTextBlack(String label) => Text(label,
    style: TextStyle(
        fontSize: 25,
        color: Colors.grey[700],
        fontWeight: FontWeight.w700,
        letterSpacing: 1));

// ignore: non_constant_identifier_names
Widget NormalGreyText(String label) => Text(label,
    overflow: TextOverflow.visible,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 14,
        wordSpacing: 1,
        letterSpacing: .5,
        color: Colors.grey[500]));

// ignore: non_constant_identifier_names
Widget BoldBlackText(String label) => Text(label,
    style: TextStyle(
        fontSize: 20,
        color: Colors.grey[800],
        fontWeight: FontWeight.w500,
        letterSpacing: 1));

// ignore: non_constant_identifier_names
Widget SmallBlackText(String label) => Text(label,
    style: TextStyle(
        fontSize: 10,
        color: Colors.grey[800],
        fontWeight: FontWeight.w500,
        letterSpacing: 1));
