// ignore_for_file: file_names

import 'package:assessmentapp/widgets/clipper-shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopShapesWidgets extends StatelessWidget {
  const TopShapesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
// Top Left shape..
            RotatedBox(
              quarterTurns: 3,
              child: ClipPath(
                clipper: FirstClipper(),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  color: const Color(0xFF7EF024).withOpacity(0.3),
                ),
              ),
            ),

// Top right shape...
            ClipPath(
              clipper: SecondClipper(),
              child: Container(
                height: 100.h,
                width: 100.w,
                color: const Color(0xFF7EF024).withOpacity(0.3),
              ),
            ),
          ],
        ),
// Middle shapes...
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: ClipPath(
                      clipper: ThirthClipper(),
                      child: Container(
                        height: 70.h,
                        width: 180.w,
                        color: const Color(0xFF7EF024).withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 210.w),
              child: RotatedBox(
                quarterTurns: 2,
                child: ClipPath(
                  clipper: FourthClipper(),
                  child: Container(
                    height: 70.h,
                    width: 180.w,
                    color: const Color(0xFF7EF024).withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
