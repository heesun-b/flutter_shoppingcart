import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart2/constants.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme (
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.black
    ),
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor
  );
}