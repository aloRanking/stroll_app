import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll/core/utils/constants.dart';
import 'package:stroll/core/utils/extentions.dart';
import 'package:stroll/core/values/color.dart';
import 'package:stroll/core/values/enum.dart';
import 'package:stroll/presentation/widgets/answer_button.dart';
import 'package:stroll/presentation/widgets/time_since_widget.dart';

class FeedHome extends StatefulWidget {
  const FeedHome({super.key});

  @override
  State<FeedHome> createState() => _FeedHomeState();
}

class _FeedHomeState extends State<FeedHome> {
  Option? selectedOption;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: kWhiteColor,
      child: Stack(

            children: [
              Container(),
              Image.asset('sunset'.png,
                width: MediaQuery.of(context).size.width,
                height: 502.h,
                fit: BoxFit.cover,),
              Positioned.fill(
                  child: SvgPicture.asset('fade'.svg,
                    //width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,)),
              Positioned(
                top: 15.h,
                left: 79.w,
                child: SizedBox(
                  width: 250.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                            'Stroll Bonfire',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextTheme.of(context).headlineLarge!.copyWith(
                              fontSize: 34.sp,
                              color: Color(0xffCCC8FF),

                              shadows: [
                                Shadow(offset: Offset(0, 0), blurRadius: 8, color: Color(0xFF000000).withValues(alpha: 0.20)),
                                Shadow(offset: Offset(0, 0), blurRadius: 2, color: Color(0xFFBEBEBE)),
                                Shadow(offset: Offset(0, 0), blurRadius: 2, color: Color(0xFF24232F).withValues(alpha: 0.50))

                              ],

                            )
                        ),
                      ),
                      spacer(w: 10),
                      Icon(Icons.keyboard_arrow_down,
                        color: Color(0xffCCC8FF),)
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 57.h,
                left: 132.w,
                child: SizedBox(

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('time'.iconsvg),
                      spacer(w:3.3),
                      TimeSinceWidget(since: '2025-05-30T09:50:50.884Z'),
                      spacer(w: 10),
                      SvgPicture.asset('user2'.iconsvg),
                      spacer(w:4.3),
                      Text('103',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kWhiteColor,)),
                    ],
                  ),
                ),
              ),


              Positioned(
                top: 374.h,
                left: 59.w,
                child: Container(
                  //height: 20.h,
                  padding:  EdgeInsets.only(top: 4.h, left: 32.w, right: 8.w, bottom: 4.h),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xE5121518),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x4C000000),
                        blurRadius: 16,
                        offset: Offset(0, 14),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Text(
                          'Angelina, 28',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 11.sp,
                              color: kWhiteColor


                          )
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 367.h,
                left: 29.w,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF121517),
                    shape: OvalBorder(),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 50.h,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          //color: const Color(0xFFC4C4C4),
                          shape: OvalBorder(),
                          image: DecorationImage(
                            image: AssetImage("user-pic".png),
                            fit: BoxFit.cover,
                          ),

                          shadows: [BoxShadow(offset: Offset(0, 3.41),
                              blurRadius: 12, color: Color(0xFF000000).withValues(alpha: 0.40))],

                        ),
                      ),
                      //child: Image.asset("user-pic".png),


                    ],
                  ),),
              ),
              Positioned(
                left: 96.w,
                top: 403.h,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 247.w,
                      child: Text(
                          'What is your favorite time of the day?',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: const Color(0xFFF5F5F5),
                            fontSize: 20.sp,
                            height: 1,
                          )
                      ),
                    ),

              ],
            ),
          ),
          
          Positioned.fill(
            left: 15.w,
            right: 15.w,
            top: 452.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                  //width: 344.w,
                  child: Text(
                    '“Mine is definitely the peace in the morning.”',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0xB2CAC8FF),

                              fontStyle: FontStyle.italic,

                              height: 1.20,
                            )
                        ),
                      ),
                      spacer(h: 14),
                      Row(
                        children: [
                          Expanded(child: AnswerBoxes(
                            option: Option.A,
                            text: 'The peace in the early mornings',
                            isSelected: selectedOption == Option.A,
                            onTap: () {
                              setState(() {
                                selectedOption = Option.A;
                              });
                            },
                          )),
                          spacer(w: 12),
                          Expanded(child: AnswerBoxes(
                            option: Option.B,
                            text: 'The magical golden hours',
                            isSelected: selectedOption == Option.B,
                            onTap: () {
                              setState(() {
                                selectedOption = Option.B;
                              });

                            },
                          )),


                      ],
                    ),
                    spacer(h: 12),
                    Row(
                      children: [
                        Expanded(child: AnswerBoxes(
                          option: Option.C,
                          text: 'Wind-down time after dinners',
                          isSelected: selectedOption == Option.C,
                          onTap: () {
                            setState(() {
                              selectedOption = Option.C;
                            });
                          },
                        )),
                        spacer(w: 12),
                        Expanded(child: AnswerBoxes(
                          option: Option.D,
                          text: 'The serenity past midnight',
                          isSelected: selectedOption == Option.D,
                          onTap: () {
                            setState(() {
                              selectedOption = Option.D;
                            });

                          },
                        )),


                      ],
                    ),
                    spacer(h: 11),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Pick your option.\nSee who has a similar mind.',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xFFE5E5E5),
                            ),

                          ),
                        ),

                        SvgPicture.asset('mic'.iconsvg),
                        spacer(w: 6),
                        SvgPicture.asset('forward'.iconsvg)
                      ],
                    )

                  ],
                ),
            ),)


        ],
      ),
    );
  }
}
