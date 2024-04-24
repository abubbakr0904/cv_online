import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cv_online/data/global_repo/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

import '../../utils/color/color.dart';
import '../../utils/images/images.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  GlobalKey _globalKey = GlobalKey();
  void _CaptureScreenShot() async {
    RenderRepaintBoundary bound =
    _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    if (bound.debugNeedsPaint) {
      Timer(const Duration(seconds: 1), () => _CaptureScreenShot());
      return null;
    }
    ui.Image image = await bound.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData != null) {
      Uint8List pngBytes = byteData.buffer.asUint8List();
      final resultsave = await ImageGallerySaver.saveImage(
          Uint8List.fromList(pngBytes),
          quality: 90,
          name: 'screenshot-${DateTime.now()}.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: AppColor.uiBlue,
            size: 24.sp,
          ),
          actions: [
            IconButton(onPressed: () {
              _CaptureScreenShot();
            }, icon: SvgPicture.asset(AppImages.pdf))
          ],
        ),
        body : Padding(
          padding: EdgeInsets.all(36.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Summary",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppImages.fontOrelega,
                ),
              ),
              SizedBox(height: 15.h,),
              Text(
                "Hello! I am based in Culleredo, Galiza (Spain) and there are plenty of ways to get in touch with me:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppImages.fontPoppins,
                ),
              ),
              SizedBox(height: 20.h,),
              ...List.generate(3, (index) => Container(
                margin: EdgeInsets.only(bottom: 24.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppImages.phone , width: 24.w, height: 24.w,fit : BoxFit.cover),
                    SizedBox(width: 30.w,),
                    Text(
                      "+998 93 037 44 41",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        fontFamily: AppImages.fontPoppins,
                      ),
                    ),

                  ],
                ),
              ),),
              SizedBox(height: 50.h,),
              Row(
                children: [
                  ...List.generate(GlobalRepo.apps.length, (index) => Container(
                    margin: EdgeInsets.only(right: 15.w),
                    child: SvgPicture.asset(GlobalRepo.apps[index] , width: 35.w,height: 35.h,fit : BoxFit.cover),
                  ))
                ],
              )


            ],
          ),
        )
      ),
    );
  }
}
