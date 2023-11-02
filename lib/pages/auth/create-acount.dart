// ignore_for_file: file_names

import 'package:assessmentapp/pages/auth/verify-page.dart';
import 'package:assessmentapp/widgets/create-form-widgets.dart';
import 'package:assessmentapp/widgets/top-shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAcount extends StatelessWidget {
  const CreateAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // unfocus the keayboard
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
// top Shapes
            const TopShapesWidgets(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Text(
                      'Create Account',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CreateFormWidgets(
                      name: 'Full Name',
                      suffixIcon: SvgPicture.asset('assets/Vector-7.svg'),
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: 15.h),
                    CreateFormWidgets(
                      name: 'Email Address',
                      suffixIcon: SvgPicture.asset('assets/Vector-8.svg'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 15.h),
                    CreateFormWidgets(
                      name: 'Phone Number',
                      suffixIcon: SvgPicture.asset('assets/Vector-9.svg'),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 15.h),
                    CreateFormWidgets(
                      name: 'Password',
                      suffixIcon: SvgPicture.asset('assets/Vector-10.svg'),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 15.h),
                    CreateFormWidgets(
                      name: 'Confirm Password',
                      suffixIcon: SvgPicture.asset('assets/Vector-11.svg'),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 6),
// Next button..
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Container(
                        height: 41.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF89EE51),
                            width: 1.w,
                          ),
                          borderRadius: BorderRadius.circular(45.r),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.w, 0.5.h),
                              blurRadius: 1.r,
                              spreadRadius: 1.r,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(320.w, 41.h),
                            backgroundColor: const Color(0xFF89EE51),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.r),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const VerifyPage(),
                                transitionDuration:
                                    const Duration(milliseconds: 100),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 3.5,
                                ),
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SvgPicture.asset('assets/Vector-6.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
