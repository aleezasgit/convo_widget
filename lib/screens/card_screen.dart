import 'package:convo_new/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize app configs
    App.init(context);

    return Scaffold(
      backgroundColor: 
          AppTheme.c.background.main ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //card1
          Container( 
            
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppTheme.c.white),
        
            width: 213.w,
            padding: EdgeInsets.only(
              top: 8.h,
              left: 8.w,
              right: 8.w,
              bottom: 15.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 🔹 Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: Image.asset(
                    'assets/images/Rectangle 1.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
          
                Space.yf(10),
          
                /// 🔹 Content
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title + Arrow (same horizontal line)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// Title
                        Expanded(
                          child: Text(
                            'Speak with Confidence',
                            style: AppText.inter.b2?.w(6),
                          ),
                        ),
          
                        /// Arrow Button (Image inside circle)
                        Container(
                          height: 28.h,
                          width: 28.h,
                          decoration: BoxDecoration(
                            color: AppTheme.c.primary.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/08 arrow right.png', // your arrow image
                              width: 16.w,
                              height: 16.h,
                             fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    Space.yf(10),
          
                    /// Rating + Duration Row
                    Row(
                      children: [
                        /// Duration
                        Text(
                          '1hr 20min',
                          style: AppText.inter.l1!
                              .cl(AppTheme.c.text.main!),
                        ),
          
                        Space.xm!,
          
                        /// Star
              Icon(
            Icons.star_rounded,
            size: 14.sp,
            color: AppTheme.c.accent.yellow,),
        
          
                        Space.xf(5),
          
                        /// Rating
                        Text(
                          '4.9 (1724)',
                          style: AppText.inter.l1bm,
                        ),
          
                     
                      ],
                    ),
                  ],
                ),
              ],
            ),
            
          ),
          Container(
            color: AppTheme.c.background.main,
            height:15.h,
          ),
          //card2
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: AppTheme.c.white),
            
            padding: EdgeInsets.all(
             10.h
             
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 🔹 Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: Image.asset(
                    'assets/images/Rectangle 1.png',
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
                    /// Title + Arrow (same horizontal line)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// Title
                        Expanded(
                          child: Text(
                            'Speak with Confidence',
                            style: AppText.inter.b2?.w(6),
                          ),
                        ),
          
                        /// Arrow Button (Image inside circle)
                        Container(
                          height: 28.h,
                          width: 28.h,
                          decoration: BoxDecoration(
                            color: AppTheme.c.primary.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/08 arrow right.png', // your arrow image
                              width: 16.w,
                              height: 16.h,
                             fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    Space.yf(10),
          
                    /// Rating + Duration Row
                    Row(
                      children: [
                        /// Duration
                        Text(
                          '1hr 20min',
                          style: AppText.inter.l1!
                              .cl(AppTheme.c.text.main!),
                        ),
          
                        Space.xm!,
          
                        /// Star
                        Icon(
                          Icons.star_rounded,
                          size: 14.sp,
                          color: AppTheme.c.accent.yellow,
                        ),
          
                        Space.xf(5),
          
                        /// Rating
                        Text(
                          '4.9',
                          style: AppText.inter.l1bm,
                        ),
          
                        Space.xf(1),
          
                        /// Count
                        Text(
                          '(1724)',
                          style: AppText.inter.l1bm,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            
          ),
          // short lessons
          Container(
            color: AppTheme.c.background.main,
            height:25.h,
          ),
        
        Container(
        
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
              decoration: BoxDecoration(
        color: AppTheme.c.white,
        borderRadius: UIProps.radiusM,
        //boxShadow: UIProps.cardShadow,
              ),
              child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              'assets/images/Saly-3 1.png',
              height: 84.h,
              width: 84.w,
              fit: BoxFit.cover,
            ),
          ),
        
          Space.xf(11),
        
          /// Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '3D Character Lumion',
                  style: AppText.inter.b2bm,
                  //maxLines: 1,
                  //overflow: TextOverflow.ellipsis,
                ),
        
                Space.yf(4),
        
                Text(
                  'Duration: 1hr 20min',
                  style: AppText.inter.l2!
                      .cl(AppTheme.c.text.main!),
                ),
        
                Space.yf(12),
        
                /// ⭐ Rating (IMAGE instead of Icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Solid star.svg',
                      width: 15.w,
                      height: 15.h,
                    ),
                    Space.xf(2.7),
                    Text(
                      '4.9 (1724)',
                      style: AppText.inter.l2bm,
                    ),
                  ],
                ),
              ],
            ),
          ),
        
          Space.xf(7.4),
        
          /// ▶ Play Button (CircleAvatar)
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
            )        ],
              ),
      ),
    );
  }
}

      