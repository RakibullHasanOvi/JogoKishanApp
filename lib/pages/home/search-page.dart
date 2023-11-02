// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/models/search-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _search = SearchModel.search();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            'assets/JaGo-Kishan2.png',
            height: 100.h,
            width: 100.w,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 20.h),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/Vector-2.svg'),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Search',
            style: GoogleFonts.poppins(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        // Search fields..
        Center(
          child: Container(
            width: 317.w,
            height: 41.h,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD9D9D9), width: 2.w),
              borderRadius: BorderRadius.circular(26.r),
            ),
            child: TextFormField(
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              keyboardType: TextInputType.name,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 239, 239),
                contentPadding: EdgeInsets.only(left: 15.w),
                // hintText: name,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(26.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(26.r),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 3.h, bottom: 3.h),
                  child: SvgPicture.asset('assets/search.svg'),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 3.w, top: 3.h, bottom: 3.h),
                  child: SvgPicture.asset('assets/cencle.svg'),
                ),
                focusColor: Colors.white,
              ),
            ),
          ),
        ),
        // add text..
        SizedBox(height: 20.h),
        Center(
          child: Text(
            'Vegetables crops expert',
            style: GoogleFonts.poppins(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10.h),
// ListView..
        Expanded(
          child: ListView.builder(
            itemCount: _search.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 40.h, right: 20.w, left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 229.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _search[index].lableText,
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                          // SvgPicture.asset('assets/rightarrow.svg'),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              _search[index].subtitle,
                              style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _search[index].image,
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
