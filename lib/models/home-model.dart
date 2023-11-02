// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoxModel {
  final Container? container;
  final String? name;
  final String labelText;
  final String bulletPoint;
  final String? bulletPoint2;

  CustomBoxModel({
    this.container,
    this.name,
    required this.labelText,
    required this.bulletPoint,
    this.bulletPoint2,
  });

  static List<CustomBoxModel> boxModel() {
    return [
      CustomBoxModel(
        labelText: 'Expert In:',
        bulletPoint: 'floricultural crop production',
        container: Container(
          height: 107.h,
          width: 126.w,
          color: const Color(0xFFD9D9D9),
        ),
      ),
      CustomBoxModel(
        labelText: 'Expert In:',
        bulletPoint: 'Crop yields gaps',
        bulletPoint2: 'Environmental',
      ),
      CustomBoxModel(
        labelText: 'Expert In:',
        bulletPoint: 'Wheat',
        bulletPoint2: 'Agronomy',
      ),
      CustomBoxModel(
        labelText: 'Expert In:',
        bulletPoint: 'Wheat genetics and breeding',
      ),
      CustomBoxModel(
        name: 'Marc Fuchs',
        labelText: 'Expert In:',
        bulletPoint: 'growth adviser',
        bulletPoint2: 'planting seeds',
      ),
      CustomBoxModel(
        name: 'Jennifer Thaler',
        labelText: 'Expert In:',
        bulletPoint: 'Chemical ecology',
        bulletPoint2: 'Plant-insect interactions',
      ),
    ];
  }
}
