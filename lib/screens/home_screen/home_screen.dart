import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color/color.dart';
import '../../utils/images/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body : Container(
        color : const Color(0xFFE5FDFF),
        width: double.infinity,
        child : SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 36.h,),
              Image.asset(AppImages.cat , width: 245.w,height: 245.w,fit : BoxFit.cover),
              SizedBox(height: 36.h,),
              Text(
                "Oqilov Abubakr Shamsutdin o'g'li",
                style: TextStyle(
                  color: AppColor.uiBlue,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppImages.fontOrelega,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Text(
                "Modile Developer",
                style: TextStyle(
                  color: AppColor.uiBlue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppImages.fontPoppins,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Text(
                "UI/UX mobile dev",
                style: TextStyle(
                  color: AppColor.uiBlue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppImages.fontPoppins,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Text(
                "Visual communicator",
                style: TextStyle(
                  color: AppColor.uiBlue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppImages.fontPoppins,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26.h,),
              Text(
                "+3 years experience",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppImages.fontPoppins,
                ),),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.uiBlue,
                    size: 20,
                  ),
                  Text(
                    "Samarqand Kattaqorgon",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w200,
                      fontFamily: AppImages.fontPoppins,
                    ),),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h , horizontal: 36.w),
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
          ),
        )
      )
    );
  }
}
