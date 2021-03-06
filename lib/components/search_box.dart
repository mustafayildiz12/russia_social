import 'package:flutter/material.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../widgets/constants.dart';
import 'gradient_button.dart';
import 'left_profile.dart';

Widget searchBox(String path) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
    child: Container(
      width: 100.w,
      height: 18.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              profile(path, 28.w, 14.h, 30),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Peter Rollins",
                    style: bodyTitleStyle,
                  ),
                  SizedBox(
                    height: 1.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: bodyDateColor,
                        size: 13.sp,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "United States, New York",
                        style: bodyDateStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  gradientButton("+ Subscribe"),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}



Widget searchTopBox(String path,String name,String country,String followers,String path2) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.66.w, vertical: 1.h),
    child: Container(
      width: 100.w,
      height: 22.63.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.33.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  profile(path, 24.w, 13.44.h,  24.w),
                  Positioned(
                    right: 1.w,
                    bottom: 0.4.h,
                    child: Container(
                      width: 8.w,
                      height: 4.48.h,
                      decoration:  BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 3
                          ),
                          shape: BoxShape.circle,
                          image:   DecorationImage(
                              image: AssetImage(path2)
                          )
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bodyTitleStyle,
                  ),
                  SizedBox(
                    height: 1.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: bodyDateColor,
                        size: 3.9.w,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                       country,
                        style: bodyDateStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    followers,
                    style: profileAddStyle,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  gradientLoginButton("+ Subscribe",57.66.w,4.99.h)
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
