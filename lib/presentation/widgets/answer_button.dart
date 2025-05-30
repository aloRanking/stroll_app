import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/core/utils/constants.dart';
import 'package:stroll/core/values/color.dart';
import 'package:stroll/core/values/enum.dart';



class AnswerBoxes extends StatelessWidget {

  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final Color selectedColor;
  final Color unselectedColor;
  final Option option;

  const AnswerBoxes({
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
    super.key, required this.option,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Color(0xff232A2E),
          border: Border.all(
            color: isSelected ? kPrimaryColor : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withValues(alpha: 0.3),
              blurRadius: 2,
              offset: Offset(-1,-1),),
            BoxShadow(
              color: Color(0xff484848).withValues(alpha: 0.3),
              blurRadius: 2,
              offset: Offset(1,1),),
          BoxShadow(
              color: Color(0xff000000).withValues(alpha: 0.3),
              blurRadius: 8,
              offset: Offset(2,2),),

          ]
        ),
        child: Row(
          children: [
            Container(
              width: 20.h,
              height: 20.h,
              decoration: BoxDecoration(
                color: isSelected ? selectedColor : unselectedColor,
                shape: BoxShape.circle,
                border: Border.all(color: isSelected ? selectedColor : Color(0xffC4C4C4), width: 2)
              ),

              child: Stack(
                alignment: Alignment.center,
                children: [
                Container(
                width: 19.h,
                height: 19.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? selectedColor : Color(0xff232A2E),
                  shape: BoxShape.circle,
                ),
                  child:Text(option.name,
                  style: Theme.of(context).textTheme.bodySmall
                ))

                ],
              ),


            ),
            spacer(w: 9),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium
              ),
            ),
          ],
        ),
      ),
    );
  }
}