import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

RoundedRectangleBorder kRoundedRectangularBorder({double radius = 8}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(radius.r),
      ),
    );

SizedBox spacer({double h = 24, double w = 24}) =>
    SizedBox(height: h.h, width: w.w);
