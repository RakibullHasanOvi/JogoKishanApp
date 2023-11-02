// ignore_for_file: file_names

import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/models/home-model.dart';
import 'package:assessmentapp/pages/home/arrow-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final boxes = CustomBoxModel.boxModel();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image..
        Center(
          child: Image.asset(
            'assets/JaGo-Kishan2.png',
            height: 120.h,
            width: 120.w,
            fit: BoxFit.contain,
          ),
        ),
        // Dropdown button...
        Center(
          child: Container(
            height: 36.h,
            width: 266.w,
            decoration: BoxDecoration(
              color: const Color(0xFF89EE51),
              borderRadius: BorderRadius.circular(45.r),
            ),
            child: Center(
              child: DropdownButton(
                dropdownColor: const Color(0xFF89EE51),
                hint: Text(
                  'Select State/Country          ',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                icon: SvgPicture.asset('assets/downarrow.svg'),
                items: <String>['Bangladesh', 'India', 'China', 'Japan']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (val) {},
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/Vector-2.svg'),
          ),
        ),
        SizedBox(height: 10.h),
// GridView with boxes...
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: boxes.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      height: 290.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
// add a logics for container..
                    if (boxes[index].container != null)
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 10.h),
                        child: boxes[index].container,
                      ),
// add a logics for name..
                    if (boxes[index].name != null)
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            boxes[index].name.toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
// add text name..
                    Positioned(
                      top: 120.h,
                      left: 10.w,
                      child: Text(
                        boxes[index].labelText,
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
// add 1st bullet points..
                    Padding(
                      padding: EdgeInsets.only(top: 140.h),
                      child: Row(
                        children: [
                          SizedBox(width: 15.w),
                          Text(
                            "\u2022", // this is a bullet point..
                            style: TextStyle(fontSize: 20.sp),
                          ), //bullet text
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Text(
                              boxes[index].bulletPoint,
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                              ),
                            ), //text
                          ),
                        ],
                      ),
                    ),
// Add a logics for 2nd bullet points..
                    if (boxes[index].bulletPoint2 != null)
                      Padding(
                        padding: EdgeInsets.only(top: 165.h, left: 15.w),
                        child: Row(
                          children: [
                            Text(
                              "\u2022", // this is a bullet point..
                              style: TextStyle(fontSize: 20.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                boxes[index].bulletPoint2.toString(),
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.underline,
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
// dropdown arrow..
                    Positioned(
                      top: 195.h,
                      left: 140.w,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const ArrowPage(),
                              transitionDuration:
                                  const Duration(milliseconds: 100),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                            ),
                          );
                        },
                        child: SvgPicture.asset('assets/dropdown.svg'),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
