import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport/login_register/login.dart';

import '../explore/explore.dart';
import 'home_1.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}
class _Home extends State<Home> {
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);
  int maxCount = 5;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  late List<Widget> imageSliders;
  List<String> imgList = [
    'assets/img_4.png',
    'assets/img_5.png',
    'assets/img_6.png',
    ];
  final List<Widget> bottomBarPages = [
    Page1(),
    Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  final themeMode = ValueNotifier(2);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    return Scaffold(backgroundColor: Color(0xff1e1e1e),
      appBar: AppBar(

        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1e1e1e),
        shape: Border(
            bottom: BorderSide(
                color: Color(0xffEAEAEA),
                width: 0.5
            )
        ),
        title: Text(
          'NowTV',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        /// Provide NotchBottomBarController
        notchBottomBarController: _controller,
        color: Color(0xff2E2E2E),
        showLabel: true,
        notchColor: Color(0xff2e2e2e),

        /// restart app if you change removeMargins
        removeMargins: true,
        bottomBarWidth: 500,
        durationInMilliSeconds: 300,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              FluentIcons.home_garage_24_regular,
              color: Color(0xff8d8d8d),
            ),
            activeItem: Icon(
              FluentIcons.home_garage_24_regular,
              color: Colors.white,
            ),
            itemLabel: 'Home',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              FluentIcons.app_recent_24_regular,
              color: Color(0xff8d8d8d),
            ),
            activeItem: Icon(
              FluentIcons.app_recent_24_regular,
              color:  Colors.white,
            ),
            itemLabel: 'Explore',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              FluentIcons.live_24_regular,
              color: Color(0xff8d8d8d),
            ),
            activeItem: Icon(
              FluentIcons.live_24_regular,
              color:  Colors.white,
            ),
            itemLabel: 'Live',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              FluentIcons.person_48_regular,
              color: Color(0xff8d8d8d),
            ),
            activeItem: Icon(
              FluentIcons.person_48_regular,
              color: Colors.white,
            ),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          /// perform action on tab change and to update pages you can update pages without pages
          print('current selected index $index');
          _pageController.jumpToPage(index);
        },
      )
          : null,);
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    // imageSliders =
  }
}