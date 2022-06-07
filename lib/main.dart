import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:studentchilik/app/data/constants/colors.dart';
import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.backgroundColor));
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Studentchilik",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(
                color: AppColors.textColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'CircularStd'),
            bodyText2: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
                fontFamily: 'CircularStd'),
          ),
          fontFamily: 'CircularStd',
          scaffoldBackgroundColor: AppColors.backgroundColor,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0),
          iconTheme: IconThemeData(color: AppColors.textColor),
        ),
      );
    }),
  );
}
