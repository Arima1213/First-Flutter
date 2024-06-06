import 'package:flutter/material.dart';

//colors
const Color green1 = Color(0xFF097210);
const Color green2 = Color(0xFF00880F);

const Color dark1 = Color(0xFF1C1C1C);
const Color dark2 = Color(0xFF4A4A4A);
const Color dark3 = Color(0xFF999798);
const Color dark4 = Color(0xFFEDEDED);

const Color blue1 = Color(0xFF0281A0);
const Color blue2 = Color(0xFF000AED5);
const Color blue3 = Color(0xFF38BBDA);

const Color red = Color(0xFFED2739);
const Color purple = Color(0xFF87027B);

//typography
TextStyle reguler12_5 = const TextStyle(
  fontFamily: 'poppins',
  fontSize: 12.5,
);
TextStyle reguler14 = reguler12_5.copyWith(fontSize: 14);

TextStyle semibold12_5 = reguler12_5.copyWith(fontWeight: FontWeight.w600);
TextStyle semibold14 = semibold12_5.copyWith(fontSize: 14, letterSpacing: 0.1);

TextStyle bold16 = reguler12_5.copyWith(
    fontWeight: FontWeight.w700, fontSize: 16, letterSpacing: 0.1);
TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
