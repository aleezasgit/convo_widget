import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convo_new/configs/configs.dart';

class FeaturedCoursesB extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String rating;

  const FeaturedCoursesB({
    super.key,
    required this.image,
    required this.title,
    required this.duration,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppTheme.c.white,
      ),
      padding: EdgeInsets.all(10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 Image
          ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 121.h,
              fit: BoxFit.cover,
            ),
          ),

          Space.yf(10),

          /// 🔹 Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title + Arrow
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Title
                  Expanded(
                    child: Text(
                      title,
                      style: AppText.inter.b2?.w(6),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  /// Arrow Button
                  Container(
                    height: 28.h,
                    width: 28.h,
                    decoration: BoxDecoration(
                      color: AppTheme.c.primary.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/08 arrow right.png',
                        width: 16.w,
                        height: 16.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),

              Space.yf(10),

              /// Rating + Duration
              Row(
                children: [
                  /// Duration
                  Text(
                    duration,
                    style: AppText.inter.l1!
                        .cl(AppTheme.c.text.main!),
                  ),

                  Space.xm!,

                  /// Star
                  SvgPicture.asset(
                    'assets/images/Solid star.svg',
                    width: 15.w,
                    height: 15.h,
                  ),

                  Space.xf(5),

                  /// Rating
                  Text(
                    rating,
                    style: AppText.inter.l1bm,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
