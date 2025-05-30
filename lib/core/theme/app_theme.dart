import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../utils/constants.dart';
import '../values/color.dart';

final textTheme = ThemeData(fontFamily: 'Proxima').textTheme;

final TextTheme proximaTextTheme = textTheme.copyWith(
  displayMedium: TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,


  ),
  headlineLarge: TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,

  ),
  headlineMedium: TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  titleLarge: TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  titleMedium: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  titleSmall: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  labelLarge: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  labelMedium: TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  labelSmall: TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.2.sp,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,

  ),
  bodyMedium: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,

  ),
  bodySmall: TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,

  ),
);



class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
    textTheme: proximaTextTheme,
    scaffoldBackgroundColor: scaffold_light_bg,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          fontSize: 18, color: kBlackColor, fontWeight: FontWeight.w600),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: kWhiteColor,
        backgroundColor: kPrimaryColor,
        disabledBackgroundColor: kButtonDisabledBackground,
        disabledForegroundColor: kPrimaryColor,
        minimumSize: Size(390.w, 60.h),
        elevation: 0,
        textStyle: const TextStyle(
          color: kWhiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.75,
        ),
        shape: kRoundedRectangularBorder(),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize:
      MaterialTapTargetSize.shrinkWrap, // removes default tap padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: const BorderSide(
        color: kBodyTextColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: proximaTextTheme.labelLarge,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: kBlackColor,
        backgroundColor: kOutlinedButtonBorderColor,
        minimumSize: Size(390.w, 60.h),
        elevation: 0,
        textStyle: TextStyle(
          color: kWhiteColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.75,
        ),
        shape: kRoundedRectangularBorder(),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: proximaTextTheme.labelLarge,
      hintStyle: proximaTextTheme.bodyMedium?.copyWith(color: kBodyTextColor),
      floatingLabelStyle:
      proximaTextTheme.labelLarge?.copyWith(color: kPrimaryColor),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: scaffold_dark_bg,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kPrimaryColor,
      brightness: Brightness.dark,
    ),
    textTheme: proximaTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kBlackColor
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(390.w, 60.h),
        textStyle: proximaTextTheme.titleMedium,
        foregroundColor: kWhiteColor,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        disabledBackgroundColor: kDarkGreyColor,
        shape: kRoundedRectangularBorder(),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: proximaTextTheme.labelLarge,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: proximaTextTheme.labelLarge,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: proximaTextTheme.labelLarge,
      hintStyle: proximaTextTheme.bodyMedium?.copyWith(color: kBodyTextColor),
      floatingLabelStyle:
      proximaTextTheme.labelLarge?.copyWith(color: kPrimaryColor),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.50,
            color: kBodyTextColor,
          ),
          borderRadius: BorderRadius.circular(8)),
    ),
  );
}