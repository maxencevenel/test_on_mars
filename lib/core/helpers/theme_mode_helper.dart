
import 'package:flutter/material.dart';

abstract class ThemeModeHelper {

  static ThemeMode getStatusFromString(String statusAsString) {
    for (final element in ThemeMode.values) {
      if (element.toString() == statusAsString) {
        return element;
      }
    }
    throw ArgumentError('No enum found');
  }
}
