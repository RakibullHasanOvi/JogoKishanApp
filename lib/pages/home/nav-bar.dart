// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:assessmentapp/pages/home/home-page.dart';
import 'package:assessmentapp/pages/home/profile-page.dart';
import 'package:assessmentapp/pages/home/search-page.dart';
import 'package:assessmentapp/provider/bottom-nav.dart';
import 'package:assessmentapp/widgets/nav-widgets.dart';
import 'package:assessmentapp/widgets/top-shapes2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationPage extends StatelessWidget {
  final List<Widget> pages = [
    HomePage(),
    FavoritesPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          TopShapes2Widgets(),
          pages[navigationProvider.currentIndex],
        ],
      ),
      bottomNavigationBar: const NavWidgets(),
    );
  }
}
