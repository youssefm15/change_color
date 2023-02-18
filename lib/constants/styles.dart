import 'package:flutter/material.dart';

/// font family name
const String kCATAMARAN = 'Catamaran';

///base font size
const double kFontSize = 14;

TextStyle _base({String fontFamily = kCATAMARAN}) => TextStyle(
      fontFamily: fontFamily,
      fontSize: kFontSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    );

///const regular textStyle
TextStyle kRegular({String fontFamily = kCATAMARAN}) =>
    _base(fontFamily: fontFamily).copyWith(
      fontWeight: FontWeight.normal,
    );

///const SemiBold textStyle
TextStyle kSemiBold({String fontFamily = kCATAMARAN}) =>
    _base(fontFamily: fontFamily).copyWith(fontWeight: FontWeight.w600);

///const bold textStyle
TextStyle kBold({String fontFamily = kCATAMARAN}) =>
    _base(fontFamily: fontFamily).copyWith(fontWeight: FontWeight.bold);
