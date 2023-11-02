// ignore_for_file: file_names
import 'package:assessmentapp/widgets/clipper-shape2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopShapes2Widgets extends StatelessWidget {
  const TopShapes2Widgets({
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
                clipper: OneClipper(),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  color: const Color(0xFF7EF024).withOpacity(0.3),
                ),
              ),
            ),

// Top right shape...
            ClipPath(
              clipper: TowClipper(),
              child: Container(
                height: 100.h,
                width: 100.w,
                color: const Color(0xFF7EF024).withOpacity(0.3),
              ),
            ),
          ],
        ),
// Middle shapes...
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RotatedBox(
              quarterTurns: 2,
              child: ClipPath(
                clipper: ThreeClipper(),
                child: Container(
                  height: 65.h,
                  width: 160.w,
                  color: const Color(0xFF7EF024).withOpacity(0.3),
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: ClipPath(
                clipper: FourClipper(),
                child: Container(
                  height: 65.h,
                  width: 160.w,
                  color: const Color(0xFF7EF024).withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
