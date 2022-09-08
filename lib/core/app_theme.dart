import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/values_manager.dart';

final appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: AppSize.s0,
    backgroundColor: ColorManager.white,
    titleTextStyle: TextStyle(
      fontSize: FontSize.s10 * 2,
      fontFamily: FontAssets.fontFamilyRoboto,
      fontWeight: FontWeightManager.medium,
      color: ColorManager.darkBlack,
    ),
    iconTheme:
        IconThemeData(color: ColorManager.darkBlack, size: AppSize.s10 * 1.7),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManager.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ColorManager.black,
    elevation: 10.0,
    selectedItemColor: ColorManager.orange,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
  ),
  primaryColor: ColorManager.primaryColor,
  scaffoldBackgroundColor: ColorManager.colorEEE,

  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeightManager.regular,
      fontFamily: FontAssets.fontFamilyRoboto,
      color: ColorManager.darkBlack,
      fontSize: FontSize.s10 * 1.6,
    ), // 2021

    // used
    headlineLarge: TextStyle(
      fontWeight: FontWeightManager.regular,
      fontFamily: FontAssets.fontFamilyRoboto,
      color: ColorManager.darkBlack,
      fontSize: FontSize.s10 * 2.4,
    ), // 2018
    headlineMedium: const TextStyle(
      fontSize: FontSize.s10 * 2,
      color: ColorManager.primaryColor,
      fontFamily: FontAssets.fontFamilyRoboto,
      fontWeight: FontWeightManager.medium,
    ),
    headlineSmall: TextStyle(
      fontSize: FontSize.s10 * 1.6,
      color: ColorManager.labelInput,
      fontFamily: FontAssets.fontFamilyRoboto,
      fontWeight: FontWeightManager.medium,
      letterSpacing: AppSize.s10 * .06,
    ),
    bodySmall: TextStyle(
      fontSize: FontSize.s10 * 1.4,
      color: ColorManager.white,
      fontFamily: FontAssets.fontFamilyRoboto,
      fontWeight: FontWeightManager.medium,
      letterSpacing: AppSize.s10 * .06,
    ),
    bodyMedium: const TextStyle(
      fontSize: FontSize.s10 * 2,
      fontFamily: FontAssets.fontFamilyCairo,
      fontWeight: FontWeightManager.medium,
    ),
    titleSmall: const TextStyle(
      fontSize: FontSize.s10 * 1.2,
      fontFamily: FontAssets.fontFamilyCairo,
      fontWeight: FontWeightManager.medium,
    ),

    // used
    titleMedium: TextStyle(
      fontSize: FontSize.s10 * 2.4,
      color: ColorManager.white,
      fontFamily: FontAssets.fontFamilyPoppins,
      fontWeight: FontWeightManager.medium,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    contentPadding:
        const EdgeInsets.only(left: AppPadding.p10, bottom: AppPadding.p10 * 0),

    // * text style *
    labelStyle:
        TextStyle(color: ColorManager.grey, fontSize: FontSize.s10 * 1.6),
    hintStyle:
        TextStyle(color: ColorManager.grey, fontSize: FontSize.s10 * 1.6),
    errorStyle: TextStyle(color: ColorManager.error),

    // * border style *
    border: const UnderlineInputBorder(
      borderSide:
          BorderSide(color: ColorManager.primaryColor, width: AppSize.s10 * .2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide:
          BorderSide(color: ColorManager.primaryColor, width: AppSize.s10 * .2),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide:
          BorderSide(color: ColorManager.activeDotColor, width: AppSize.s1_5),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    ),
    focusedErrorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: ColorManager.error)),
  ),
);
