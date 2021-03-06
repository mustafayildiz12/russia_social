import 'package:flutter/material.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import '../widgets/constants.dart';

Widget topRow(BuildContext context,String pageTitle,double width) {
  return  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 1.2.w,
      ),
      IconButton(
       icon: Icon(
         Icons.arrow_back_ios,
         color: buttonLeft,
         size: 6.4.w,
       ),
        onPressed: (){
         Navigator.pop(context);
        },
      ),
      SizedBox(width: width,),
      Text(
        pageTitle,
        style: titleStyle,
      ),
      SizedBox(
        width: 14.w,
      ),

    ],
  );
}