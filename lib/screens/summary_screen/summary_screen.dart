import 'package:cv_online/data/global_repo/repo.dart';
import 'package:cv_online/data/models/file_model/file_model.dart';
import 'package:cv_online/utils/color/color.dart';
import 'package:cv_online/utils/images/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_filex/open_filex.dart';

import '../../bloc/file_bloc.dart';
import '../../bloc/file_event.dart';
import '../../bloc/file_state.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  FileManagerBloc fileManagerBloc = FileManagerBloc();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileManagerBloc, FileManagerState>(builder: (context , state){
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
            IconButton(onPressed: ()async {
              if (state.newFileLocation.isEmpty) {
                print("mana");
                print(state.progress);
                fileManagerBloc.add(
                  DownloadFileEvent(
                    fileDataModel: FileDataModel(iconPath: "" , fileUrl: "http://ferlibrary.uz/f/sariq_devni_minib_roman.pdf" , fileName: "sariq dev"),
                  ),
                );
              } else {
                await OpenFilex.open(state.newFileLocation);
              }
            }, icon: SvgPicture.asset(AppImages.pdf))
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
                "Summary",
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
                            GlobalRepo.icons.length,
                                (index) => Container(
                                margin: EdgeInsets.only(bottom: 36.h),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(GlobalRepo.icons[index],
                                        width: 48.w, height: 48.w, fit: BoxFit.cover),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    Text(
                                      GlobalRepo.bigText[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppImages.fontOrelega,
                                      ),
                                    ),
                                    Text(
                                      GlobalRepo.littleText[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: AppImages.fontPoppins,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 3,
                                    ),
                                  ],
                                )))
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
    });
  }
}
