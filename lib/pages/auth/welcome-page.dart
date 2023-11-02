// ignore_for_file: file_names
import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/pages/auth/login-page.dart';
import 'package:assessmentapp/widgets/top-shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                const TopShapesWidgets(),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'welcome To',
                        style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      Image.asset(
                        'assets/JaGo_Kishan.png',
                        height: 94.h,
                        width: 90.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 5.h),
                      Image.asset(
                        'assets/image1.png',
                        height: 411.h,
                        width: 295.w,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          'Without Agriculture  we can\'t survive on this planet',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const LoginPage(),
                                transitionDuration:
                                    const Duration(milliseconds: 100),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c),
                              ),
                            );
                          },
                          child: Container(
                            height: 58.h,
                            width: 310.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Ractengle1.png'),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
