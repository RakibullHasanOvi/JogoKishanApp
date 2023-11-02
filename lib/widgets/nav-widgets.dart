import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/provider/bottom-nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class NavWidgets extends StatelessWidget {
  const NavWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
//Coutom bottom navigation bar..
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                height: 50.h, // Customize the height
                width: 320.w, // Customize the width
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(46.r), // Customize the radius
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: -2.r,
                      blurRadius: 5.r,
                    ),
                  ],
                ),
              ),
            ),
          ),
// add images..
          Padding(
            padding: EdgeInsets.only(top: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Container(
                      color: mainColor,
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: BottomBarButton(
                      image: 'assets/Vector-3.svg',
                      index: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.h),
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.r),
                      border: Border.all(
                        color: mainColor,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: BottomBarButton(
                        image: 'assets/Vector-4.svg',
                        index: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: BottomBarButton(
                    image: 'assets/Vector-5.svg',
                    index: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  final String image;

  final int index;

  BottomBarButton({
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<BottomNavigationProvider>(context);

    // final isSelected = navigationProvider.currentIndex == index;

    return GestureDetector(
      onTap: () {
        navigationProvider.updateIndex(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(image),
        ],
      ),
    );
  }
}
