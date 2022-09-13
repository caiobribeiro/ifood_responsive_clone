import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme/color_schemes.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  ThemeData currentTheme = MyTheme.light;

  @computed
  bool get isDark => currentTheme.brightness == Brightness.dark;

  @action
  changeTheme() {
    if (isDark) {
      currentTheme = MyTheme.light;
    } else {
      currentTheme = MyTheme.dark;
    }
    saveThemePreferences();
  }

  @action
  saveThemePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isDark);
  }

  @action
  Future loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;

    if (prefs.containsKey('isDark') && isDark) {
      currentTheme = MyTheme.dark;
    } else {
      currentTheme = MyTheme.light;
    }
  }
}

class MyTheme {
  static final ThemeData light = _buildLightTheme();
  static final ThemeData dark = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    final lightBase = ThemeData(
      colorScheme: lightColorScheme,
      brightness: Brightness.light,
      useMaterial3: true,
    );
    return lightBase;
  }

  static ThemeData _buildDarkTheme() {
    final darkBase = ThemeData(
      colorScheme: darkColorScheme,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
    return darkBase;
  }
}
