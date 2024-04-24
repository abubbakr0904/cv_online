import 'package:cv_online/data/global_repo/repo.dart';
import 'package:cv_online/utils/color/color.dart';
import 'package:cv_online/utils/images/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 36.h,
            ),
            Text(
              "Skills: Tech",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                fontFamily: AppImages.fontOrelega,
              ),
            ),
            SizedBox(height: 36.h),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                          GlobalRepo.codes.length,
                              (index) => Container(
                                margin: EdgeInsets.only(bottom: 15.h),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(GlobalRepo.codes[index] , width: 24.w,height: 24.w,fit : BoxFit.cover),
                                    SizedBox(width: 16.w,),
                                    Text(
                                      GlobalRepo.ext[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: AppImages.fontPoppins,
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                    ],
                  )),
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
                              offset: const Offset(0 , 4),
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
      ),
    );
  }
}
