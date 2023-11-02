// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchModel {
  final String lableText;
  final String subtitle;
  final Image image;

  SearchModel(
      {required this.lableText, required this.subtitle, required this.image});

  static List<SearchModel> search() {
    return [
      SearchModel(
        lableText: 'Expert In:',
        subtitle: '> Vegetables Disease Management',
        image: Image.asset(
          'assets/image2.png',
          height: 98.h,
          width: 98.w,
          fit: BoxFit.contain,
        ),
      ),
      SearchModel(
        lableText: 'Expert In:',
        subtitle: '> Leafy Vegetables',
        image: Image.asset(
          'assets/image3.png',
          height: 98.h,
          width: 98.w,
          fit: BoxFit.contain,
        ),
      ),
      SearchModel(
        lableText: 'Expert In:',
        subtitle: '> Pesticide use in fruits and vegetables',
        image: Image.asset(
          'assets/image4.png',
          height: 98.h,
          width: 98.w,
          fit: BoxFit.contain,
        ),
      ),
    ];
  }
}
