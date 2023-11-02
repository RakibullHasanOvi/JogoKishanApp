// ignore_for_file: file_names
import 'package:assessmentapp/pages/home/nav-bar.dart';
import 'package:assessmentapp/widgets/detailes-form-widgets.dart';
import 'package:assessmentapp/widgets/top-shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({super.key});

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
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: SvgPicture.asset('assets/Vector-2.svg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width / 5.5),
                              child: Image.asset('assets/JaGo-Kishan2.png'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Farming Detailes',
                        style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const DetailesFormWidgets(
                        name: 'Enter Your Crop Type',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Enter Your Soil Type',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Enter Your Climate',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Farm Size and layout',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Pest and disease',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Farming equipment',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10.h),
                      const DetailesFormWidgets(
                        name: 'Economic Information',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 50.h),
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
                                  pageBuilder: (_, __, ___) => NavigationPage(),
                                  transitionDuration:
                                      const Duration(seconds: 0),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                ),
                              );
                            },
                            child: Text(
                              'SUBMIT',
                              style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
