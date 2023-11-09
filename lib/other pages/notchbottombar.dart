import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../page/ListView products.dart';
import '../page/ProfileModel.dart';
import '../page/firstScreen.dart';
import '../page/practieModule.dart';
import '../page/secondPage.dart';

class notchbottom extends StatefulWidget {
  const notchbottom({Key? key}) : super(key: key);

  @override
  State<notchbottom> createState() => _notchbottomState();
}

class _notchbottomState extends State<notchbottom> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);
  int maxCount = 4;
  /// widget list
  final List<Widget> bottomBarPages = [
    FirstScreen(),
    HomePage(),
    profile_screen(),
    Products()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar:(
          bottomBarPages.length <= maxCount)?
      AnimatedNotchBottomBar(
        blurOpacity:10,
        pageController: _pageController,
        color: Colors.white,
        showLabel: false,
        notchColor: Colors.teal,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.white,
            ),
          ),
          ///svg example
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.details,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.details_outlined,
              color: Colors.white,
            ),
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInExpo,
          );
        },
      )
          : null,
    );
  }
}

