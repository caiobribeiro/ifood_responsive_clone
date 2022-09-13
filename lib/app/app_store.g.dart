// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on AppStoreBase, Store {
  Computed<bool>? _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??=
          Computed<bool>(() => super.isDark, name: 'AppStoreBase.isDark'))
      .value;

  late final _$currentThemeAtom =
      Atom(name: 'AppStoreBase.currentTheme', context: context);

  @override
  ThemeData get currentTheme {
    _$currentThemeAtom.reportRead();
    return super.currentTheme;
  }

  @override
  set currentTheme(ThemeData value) {
    _$currentThemeAtom.reportWrite(value, super.currentTheme, () {
      super.currentTheme = value;
    });
  }

  late final _$saveThemePreferencesAsyncAction =
      AsyncAction('AppStoreBase.saveThemePreferences', context: context);

  @override
  Future saveThemePreferences() {
    return _$saveThemePreferencesAsyncAction
        .run(() => super.saveThemePreferences());
  }

  late final _$loadThemeAsyncAction =
      AsyncAction('AppStoreBase.loadTheme', context: context);

  @override
  Future<dynamic> loadTheme() {
    return _$loadThemeAsyncAction.run(() => super.loadTheme());
  }

  late final _$AppStoreBaseActionController =
      ActionController(name: 'AppStoreBase', context: context);

  @override
  dynamic changeTheme() {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTheme: ${currentTheme},
isDark: ${isDark}
    ''';
  }
}
