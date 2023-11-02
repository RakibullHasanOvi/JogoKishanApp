import 'package:assessmentapp/widgets/top-shapes2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ArrowPage extends StatelessWidget {
  const ArrowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              TopShapes2Widgets(),
              Center(
                child: Image.asset(
                  'assets/JaGo-Kishan2.png',
                  height: 120.h,
                  width: 120.w,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 130.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/Vector-2.svg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
