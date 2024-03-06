import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/utils/colors/app_colors.dart';
import 'package:to_do_app/utils/size/size_utils.dart';
import 'package:to_do_app/utils/styles/app_text_style.dart';

import '../../utils/images/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        backgroundColor: AppColors.c_0C0F14,
        body: Padding(
          padding: EdgeInsets.fromLTRB(28, 48, 28, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppImages.menu),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppImages.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppImages.like),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Your Favourites",
                style: AppTextStyle.variableFont.copyWith(
                  color: AppColors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16,),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 7.5 / 9,
                  viewportFraction: 0.6,
                  initialPage: 5,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.linear,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  onPageChanged: (v, d) {},
                  scrollDirection: Axis.horizontal,

                ),
                items: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white10, borderRadius: BorderRadius.circular(8.r)),
                    child: Image.asset(AppImages.coffee),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white10, borderRadius: BorderRadius.circular(8.r)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
