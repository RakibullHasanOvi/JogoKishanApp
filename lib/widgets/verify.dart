// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_import

import 'package:assessmentapp/pages/home/detailes-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  bool hasError = false;
  String currentText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PinCodeTextField(
          pinTextStyle: GoogleFonts.poppins(
            fontSize: 32.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          pinBoxHeight: 59.h,
          pinBoxWidth: 62.w,
          controller: otpController,
          pinBoxRadius: 16.r,
          highlight: true,
          highlightPinBoxColor: const Color(0xFFD9D9D9),
          pinBoxColor: const Color(0xFFD9D9D9),
          highlightColor: Colors.black, // Color of the selected/active field
          defaultBorderColor: Colors.black, // Color of inactive fields
          hasTextBorderColor: Colors.black, // Color of fields with text
          maxLength: 4,
          onTextChanged: (value) {
            setState(() {
              currentText = value;
            });
          },
          pinBoxBorderWidth: 1.w,
          onDone: (value) {
            // Call a function to verify the OTP
          },
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t receive code?',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Request again',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          'Get via Call',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF89EE51),
              minimumSize: Size(338.w, 42.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            onPressed: () {
              // Verify the OTP here
              if (currentText.length != 4) {
                setState(() {
                  hasError = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: const Color(0xFF89EE51),
                    content: Text(
                      'Please write your full otp code',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              } else {
                setState(() {
                  hasError = true;
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const DetailesPage(),
                      transitionDuration: const Duration(milliseconds: 100),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                });
                // Call a function to verify the OTP
                // print('OTP entered: $currentText');
              }
            },
            child: Text(
              'Verify',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
