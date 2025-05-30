import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll/core/utils/extentions.dart';
import 'package:stroll/presentation/modules/chat/chat_list_screen.dart';
import 'package:stroll/presentation/modules/hot/hot_screen.dart';
import 'package:stroll/presentation/modules/profile/profile_screen.dart';

import '../../../core/values/color.dart';
import 'feed_home.dart';

class StrollApp extends StatefulWidget {
  const StrollApp({super.key});

  @override
  State<StrollApp> createState() => _StrollAppState();
}

class _StrollAppState extends State<StrollApp> {
  int selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  static final List<Widget> _widgetOptions = <Widget>[
    const FeedHome(
      key: PageStorageKey('home'),
    ),
    HotScreen(
      key: const PageStorageKey('hot'),
    ),
    ChatListScreen(
      key: const PageStorageKey('chat'),
    ),
    ProfileScreen(
      key: const PageStorageKey('profile'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageStorage(
              bucket: bucket, child: _widgetOptions.elementAt(selectedIndex))),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          _buildHomeItem(),
          _buildFireItem(),
          _buildChatItem(),
          _buildProfileItem(),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildHomeItem() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset('cards'.iconsvg),
      label: '',
      activeIcon: SvgPicture.asset(
        'cards'.iconsvg,
        colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
      ),
    );
  }

  BottomNavigationBarItem _buildFireItem() {
    return BottomNavigationBarItem(
      icon: Badge(
          backgroundColor: const Color(0xFFB4B2FF),child: SvgPicture.asset('fire'.iconsvg)),
      label: '',
      activeIcon: SvgPicture.asset('fire'.iconsvg,
          colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn)),
    );
  }

  BottomNavigationBarItem _buildChatItem() {
    final count = 10;
    return BottomNavigationBarItem(
      icon: count > 0
          ? Badge(
        backgroundColor: const Color(0xFFB4B2FF),
              label: Text('$count'),
              child: SvgPicture.asset('chat'.iconsvg),
            )
          : SvgPicture.asset('chat'.iconsvg),
      label: '',
      activeIcon: SvgPicture.asset('chat'.iconsvg,
          colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn)),
    );
  }

  BottomNavigationBarItem _buildProfileItem() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset('user'.iconsvg),
      label: '',
      activeIcon: SvgPicture.asset('user'.iconsvg,
          colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn)),
    );
  }
}
