import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:global_bottom_navigation_bar/widgets/bottom_navigation_item.dart';
import 'package:global_bottom_navigation_bar/widgets/scaffold_bottom_navigation.dart';
import 'package:russia_social/pages/search_tab/search_tab.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/pages/add_tab/all_feedbacks.dart';
import 'package:russia_social/pages/home_tab/user_profile.dart';
import 'package:russia_social/pages/notification_page/notification_page.dart';
import 'package:russia_social/pages/profile_tab/profile_page.dart';
import 'package:sizer/sizer.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return ScaffoldGlobalBottomNavigation(
      listOfChild: const [
        HomeScreen(),
        SearchGlobal(),
        AllFeedbacks(),
        NotificationPage(),
        ProfilePage(),
      ],
      listOfBottomNavigationItem: buildBottomNavigationItemList(),
    );
  }

  List<BottomNavigationItem> buildBottomNavigationItemList() => [
        BottomNavigationItem(
          activeIcon: FaIcon(
            FontAwesomeIcons.folder,
            color: buttonLeft,
            size: 6.5.w,
          ),
          inActiveIcon: FaIcon(
            FontAwesomeIcons.folder,
            color: Colors.grey,
            size: 6.5.w,
          ),
          title: 'favorite',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.search_outlined,
            color: buttonLeft,
            size: 6.5.w,
          ),
          inActiveIcon: Icon(
            Icons.search_outlined,
            color: Colors.grey,
            size: 6.5.w,
          ),
          title: 'notifications',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.add,
            color: buttonLeft,
            size: 6.5.w,
          ),
          inActiveIcon: Icon(
            Icons.add,
            color: Colors.grey,
            size: 6.5.w,
          ),
          title: 'more',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.notifications_none,
            color: buttonLeft,
            size: 6.5.w,
          ),
          inActiveIcon: Icon(
            Icons.notifications_none,
            color: Colors.grey,
            size: 6.5.w,
          ),
          title: 'explore',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.person,
            color: buttonLeft,
            size: 6.5.w,
          ),
          inActiveIcon: Icon(
            Icons.person,
            color: Colors.grey,
            size: 6.5.w,
          ),
          title: 'learn',
          color: Colors.white,
          vSync: this,
        ),
      ];
}
