import 'package:flutter/material.dart';

import '../constants/my_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
    //fontFamily:
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.secondaryColor),
    useMaterial3: true,
  );
}
