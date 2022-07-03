import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telecaller/utils/images.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7DDEB),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 70.h),
            Container(
              child: Row(
                children: [
                  //circuler profile image
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 50.r,
                        height: 50.r,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: ClipOval(
                          child: Image.asset(
                            profileImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //name and designation
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Roshan Nahak",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Telecaller",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ),

                  //edit pen tool
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 30.r,
                        height: 30.r,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: ClipOval(
                            child: Center(
                                child: Icon(
                          Icons.edit,
                          size: 16.r,
                          color: Colors.black.withOpacity(0.5),
                        ))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Divider(
              height: 1,
              color: Color(0xFFB1C8E2),
            ),
            SizedBox(height: 20.h),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Today Stats",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 120.h,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.call, size: 18.r, color: Colors.blue),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Total calls",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "105",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 120.h,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.call, size: 18.r, color: Colors.green),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Done calls",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "105",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
