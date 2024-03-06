
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/utils/colors/app_colors.dart';
import 'package:to_do_app/utils/images/app_images.dart';

import '../routes.dart';
import '../utils/styles/app_text_style.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int activeIndex = 0;
  // @override
  // void initState() {
  //   Future.delayed(
  //     const Duration(seconds: 5),
  //         () {
  //       Navigator.pushReplacementNamed(context,RouteNames.homeScreen);
  //     },
  //   );
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_0C0F14,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.splash),
          Padding(
            padding:  EdgeInsets.only(top: 15.h,left: 27.w,right: 27.w),
            child: Text(
              "FIND THE BEST COFFEE FOR YOU",
              style: AppTextStyle.variableFont.copyWith(color: AppColors.white, fontSize: 27.sp,),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 125.h,),
          InkWell(
            onTap: (){Navigator.pushNamed(context, RouteNames.homeScreen);},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white10,
              ),
              child: Padding(
                padding:  EdgeInsets.fromLTRB(32.sp,16.sp,32.sp,16.sp),
                child: Text("Process",style:TextStyle(color: AppColors.white,fontSize: 18.sp,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
