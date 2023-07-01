import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/pages/pages.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/widgets/nav_item.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int navIndex = 2;
  final PageController _pageController = PageController(initialPage: 2);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() {
            navIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
      bottomSheet: _getBottomSheet(),
    );
  }

  Widget _getBottomSheet() {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70.h,
      padding: EdgeInsets.only(
        top: 15.h,
        right: 15.w,
        left: 15.w,
        bottom: 5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: BoxDecoration(
          color: kBottomNavBarBGColor,
          borderRadius: BorderRadius.circular(50.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            5,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  navIndex = index;
                  _pageController.jumpToPage(navIndex);
                });
              },
              child: NavItem(
                icon: navBarItems[index].icon,
                label: navBarItems[index].label,
                isSelected: navIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
