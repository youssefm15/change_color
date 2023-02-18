import 'package:flutter/material.dart';

///white hex color
const int kWhiteHex = 0xFFFFFFFF;

///primary color for the app
const Color kPrimaryColor = Color(0xFF707070);

///secondary color for the app
const Color kAccentColor = Color(0xFF118FA6);

/// basic colors
const Color kWhiteColor = Color(kWhiteHex);

///Any grey color if degree is all same
Color greyishColor(int degree, {double? opacity}) =>
    Color.fromRGBO(degree, degree, degree, opacity ?? 1);
