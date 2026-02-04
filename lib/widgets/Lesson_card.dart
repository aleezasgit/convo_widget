import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convo_new/configs/configs.dart';

class ShortLessonsCard extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String rating;

  const ShortLessonsCard({
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
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppTheme.c.white,
        borderRadius: UIProps.radiusM,
        // boxShadow: UIProps.cardShadow,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              image,
              height: 84.h,
              width: 84.w,
              fit: BoxFit.cover,
            ),
          ),

          Space.xf(11),

          /// 🔹 Content (ARGUMENTS)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppText.inter.b2bm,
                ),

                Space.yf(4),

                Text(
                  duration,
                  style: AppText.inter.l2!
                      .cl(AppTheme.c.text.main!),
                ),

                Space.yf(12),

                /// ⭐ Rating (FIXED ICON)
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Solid star.svg',
                      width: 15.w,
                      height: 15.h,
                    ),
                    Space.xf(2.7),
                    Text(
                      rating,
                      style: AppText.inter.l2bm,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Space.xf(7.4),

          /// ▶ Play Button (FIXED)
          CircleAvatar(
            radius: 14.r,
            backgroundColor: AppTheme.c.primary.shade100,
            child: SvgPicture.asset(
              'assets/images/65 play.svg',
              width: 16.w,
              height: 16.h,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
