import 'package:ay_flutter_challenge/utils/theme_colors.dart';
import 'package:flutter/material.dart';

/// A class that encapsulates the App's material [Theme].
class AppTheme {
  AppTheme._();

  /// Builds a custom [ThemeData] based on the closest [Theme] instance
  /// that encloses the given context.
  static ThemeData of(BuildContext context) {
    final baseTheme = Theme.of(context);
    return baseTheme.copyWith(
      primaryColor: ThemeColors.grey,
      accentColor: ThemeColors.brown,
      scaffoldBackgroundColor: ThemeColors.smoothWhite,
      appBarTheme: AppBarTheme(
        color: ThemeColors.grey,
        iconTheme: IconThemeData(
          color: ThemeColors.white,
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: ThemeColors.darkGray,
          fontSize: 20.0,
        ),
      ),
    );
  }
}