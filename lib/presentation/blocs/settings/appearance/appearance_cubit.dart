import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_on_mars/core/helpers/theme_mode_helper.dart';

const themeModeJson = 'themeMode';

class AppearanceCubit extends HydratedCubit<ThemeMode> {
  AppearanceCubit() : super(ThemeMode.light);

  void setTheme({required ThemeMode themeMode}) {
    emit(themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeMode =
        ThemeModeHelper.getStatusFromString(json[themeModeJson] as String);

    return themeMode;
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {
      themeModeJson: state.toString(),
    };
  }
}
