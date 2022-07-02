import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telecaller/pages/home_page.dart';

void main() => runApp(
      ScreenUtilInit(
        designSize: Size(360, 780),
        builder: (context, widget) => MaterialApp(
          title: "Telecalling",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
