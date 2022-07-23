
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:travel_guide/TravelerView/SplashScreen/splashScreen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
      return GetMaterialApp(
        title: 'Travel Guide',
        home: SplashScreen(),
        // home: TravellersRequest(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}