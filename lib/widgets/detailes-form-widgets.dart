import 'package:assessmentapp/colors/all-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailesFormWidgets extends StatelessWidget {
  final String? name;

  final TextInputType? keyboardType;
  const DetailesFormWidgets({
    super.key,
    required this.name,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Container(
        // width: 340.w,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 2.w),
          borderRadius: BorderRadius.circular(26.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.w, 0.5.h),
              blurRadius: 1.r,
              spreadRadius: 1.r,
              color: Colors.grey,
            ),
          ],
        ),
        child: TextFormField(
          style: GoogleFonts.poppins(
            fontSize: 18.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          keyboardType: keyboardType,
          cursorColor: mainColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 15.w, top: 10.h, bottom: 0.h),
            hintText: name,
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
            focusColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
