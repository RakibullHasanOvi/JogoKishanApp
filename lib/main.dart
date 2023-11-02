import 'package:assessmentapp/colors/all-colors.dart';
import 'package:assessmentapp/pages/auth/welcome-page.dart';
import 'package:assessmentapp/provider/bottom-nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  // This is useing for to stop oriantion mood
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        )
      ],
      child: ScreenUtilInit(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
                useMaterial3: true,
              ),
              home: const WelcomePage(),
            ),
          );
        },
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: false,
      ),
    );
  }
}
