// ignore_for_file: file_names

import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/widgets/top-shapes.dart';
import 'package:assessmentapp/widgets/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const TopShapesWidgets(),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 74.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child:
                                      SvgPicture.asset('assets/Vector-2.svg'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 5),
                                child: Container(
                                  height: 120.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: mainColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Image.asset('assets/JaGo-Kishan2.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Verify phone',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Code sent to 016120723297',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        OtpScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
