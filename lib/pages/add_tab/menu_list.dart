import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:russia_social/pages/add_tab/top_users.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'all_feedbacks.dart';
import 'last_comments.dart';

class AddMenu extends StatefulWidget {
  const AddMenu({Key? key}) : super(key: key);

  @override
  _AddMenuState createState() => _AddMenuState();
}

class _AddMenuState extends State<AddMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.times,
                    color: buttonLeft,
                    size: 6.4.w,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 50.w,
                ),
                IconButton(
                  icon: Icon(
                    Icons.mail_outline_outlined,
                    color: buttonLeft,
                    size: 6.4.w,
                  ),
                  onPressed: () {
                    //
                  },
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, top: 2.h),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllFeedbacks()));
                },
                  child: Text(
                "All feedbacks",
                style: bodyMenuItems,
              )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, top: 2.h),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TopUsers()));
                },
                child: Text(
                  "Top Users",
                  style: bodyMenuItems,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, top: 2.h),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastComments()));
                },
                child: Text(
                  "Last Comments",
                  style: bodyMenuItems,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
