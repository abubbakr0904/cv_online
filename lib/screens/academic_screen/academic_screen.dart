import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color/color.dart';
import '../../utils/images/images.dart';

class AcademicScreen extends StatefulWidget {
  const AcademicScreen({super.key});

  @override
  State<AcademicScreen> createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: AppColor.uiBlue,
          size: 24.sp,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppImages.pdf))
        ],
      ),
      body : Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child : Column(
          children: [
            SizedBox(height: 36.h,),
            Text(
              "Academic backgr.",
              style: TextStyle(
                color: AppColor.uiBlue,
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                fontFamily: AppImages.fontOrelega,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 36.h,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(4, (index) => Container(
                        width: double.infinity,
                        height: 140,
                        child : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(onPressed: (){}, icon: SvgPicture.asset(AppImages.saved , width: 14.w,height: 20.h,fit : BoxFit.cover)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Graduate",
                                  style: TextStyle(
                                    color: AppColor.uiBlue,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: AppImages.fontPoppins,
                                  ),
                                ),
                                Text(
                                  "Journalism",
                                  style: TextStyle(
                                    color: AppColor.uiBlue,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppImages.fontPoppins,
                                  ),
                                ),
                                Text(
                                  "Universidad Pontificia de \nSalamanca",
                                  style: TextStyle(
                                    color: AppColor.uiBlue,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppImages.fontPoppins,
                                  ),
                                  maxLines: 2,
                                ),
                                Text(
                                  "Year : 2007",
                                  style: TextStyle(
                                    color: AppColor.uiBlue,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: AppImages.fontPoppins,
                                  ),
                                  maxLines: 2,
                                ),


                              ],
                            )
                          ],
                        )
                    ))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFC3DF),
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(width: 2, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0 , 4),
                              spreadRadius: 1,
                              blurRadius: 100,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 16.sp,
                    ),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor:const  Color(0xFFFFC3DF)
                      ),
                      onPressed: (){}, child: Text("Home" , style: TextStyle(
                    color : Colors.white,
                    fontFamily: AppImages.fontPoppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                  ),)),
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFC3DF),
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(width: 2, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0 , 4),
                              spreadRadius: 1,
                              blurRadius: 100,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
