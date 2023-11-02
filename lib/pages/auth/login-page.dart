// ignore_for_file: file_names, unused_local_variable
import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/pages/auth/create-acount.dart';
import 'package:assessmentapp/pages/home/detailes-page.dart';
import 'package:assessmentapp/widgets/top-shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const TopShapesWidgets(),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/JaGo-Kishan2.png',
                            height: 142.h,
                            width: 141.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Stack(
                          fit: StackFit.loose,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/bg.png',
                                height: 422.h,
                                width: 312.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/image1.png',
                                      height: 150.h,
                                      width: 129.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // Email...
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: w / 7,
                                    left: w / 7,
                                  ),
                                  child: TextFormField(
                                    cursorColor: Colors.white,
                                    keyboardType: TextInputType.emailAddress,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Your e-mail',
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                      prefixIcon: Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            end: 25.h),
                                        child: SvgPicture.asset(
                                          'assets/Vector.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Password...
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: w / 7,
                                    left: w / 7,
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    cursorColor: Colors.white,
                                    keyboardType: TextInputType.emailAddress,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                      prefixIcon: Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            end: 25.h),
                                        child: SvgPicture.asset(
                                          'assets/Vector-1.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.w),
                                // Forgot Password..
                                Padding(
                                  padding: EdgeInsets.only(left: 120.w),
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.w),
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              const CreateAcount(),
                                          transitionDuration:
                                              const Duration(milliseconds: 100),
                                          transitionsBuilder: (_, a, __, c) =>
                                              FadeTransition(
                                                  opacity: a, child: c),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Or Sign In Using',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.w,
                                ),
                                // FaceBook, Google, Twiter images add this section.
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/facebook.svg'),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 17.w, right: 17.w),
                                      child:
                                          SvgPicture.asset('assets/google.svg'),
                                    ),
                                    SvgPicture.asset('assets/twiter.svg'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(231.w, 49.h),
                              backgroundColor: mainColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const DetailesPage(),
                                  transitionDuration:
                                      const Duration(milliseconds: 100),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                ),
                              );
                            },
                            child: Text(
                              'LOGIN',
                              style: GoogleFonts.poppins(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100.h),
                        Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: Container(
                            height: 40.h,
                            width: 130.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/Rectangle4.png',
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Transform.rotate(
                                  angle: 6,
                                  child: Text(
                                    'LANG',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 20.h, top: 3.h, left: 10.w),
                                  child: Image.asset(
                                    'assets/arroow.png',
                                    height: 12.h,
                                    width: 21.w,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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

/*

*/