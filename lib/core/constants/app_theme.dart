import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color.dart';
import 'app_string.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor, brightness: Brightness.light),
      useMaterial3: true,
      // primarySwatch:
      //     const MaterialColor(AppColor.primarySwatch, AppColor.primaryColorMap),
      scaffoldBackgroundColor: AppColor.appBodyBg,
      navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: AppColor.primaryColor,
          elevation: 0.0,
          indicatorColor: AppColor.primaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
          backgroundColor: AppColor.navBarBgColor),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColor.appBodyBg,
          barBackgroundColor: AppColor.cardColor,
          primaryColor: AppColor.primaryColor,
          primaryContrastingColor: AppColor.primaryColor,
          textTheme: CupertinoTextThemeData(
            textStyle: const TextStyle(fontFamily: AppString.fontName),
            actionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            tabLabelTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navTitleTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navLargeTitleTextStyle:
                const TextStyle(fontFamily: AppString.fontName),
            navActionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            pickerTextStyle: const TextStyle(fontFamily: AppString.fontName),
            dateTimePickerTextStyle: TextStyle(
                fontFamily: AppString.fontName,
                color: AppColor.textColor,
                fontSize: 18.0),
          )),
      appBarTheme: AppBarTheme(
          // backgroundColor: AppColor.appbarBgColor,
          titleTextStyle:
              TextStyle(color: AppColor.textColor, fontWeight: FontWeight.bold),
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColor.primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          )),
      canvasColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.primaryColor,
          selectionColor: AppColor.primaryColor.withOpacity(0.4)),
      bottomSheetTheme:
          const BottomSheetThemeData(modalBackgroundColor: Colors.transparent),
      fontFamily: AppString.fontName,
      textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: AppString.fontName),
          displayMedium: TextStyle(fontFamily: AppString.fontName),
          displaySmall: TextStyle(fontFamily: AppString.fontName),
          headlineMedium: TextStyle(fontFamily: AppString.fontName),
          headlineSmall: TextStyle(fontFamily: AppString.fontName),
          titleLarge: TextStyle(fontFamily: AppString.fontName),
          titleMedium: TextStyle(fontFamily: AppString.fontName),
          titleSmall: TextStyle(fontFamily: AppString.fontName),
          bodyLarge: TextStyle(fontFamily: AppString.fontName),
          bodyMedium: TextStyle(fontFamily: AppString.fontName),
          bodySmall: TextStyle(fontFamily: AppString.fontName),
          labelLarge: TextStyle(fontFamily: AppString.fontName),
          labelSmall: TextStyle(fontFamily: AppString.fontName)));

  static var deviceOrientation = SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  static var statusBarDesign = SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColor.primaryColor,
      statusBarIconBrightness: Brightness.light));

  static var hideStatusBar =
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  static var showStatusBar = SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}
