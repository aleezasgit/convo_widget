import 'package:convo_new/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileOptionTile extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ProfileOptionTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        
        decoration: BoxDecoration(
          color: AppTheme.c.white,
          borderRadius: BorderRadius.circular(16.r)

        ),
        child: 
        
        Padding(
          padding: EdgeInsets.only(left: 6.w, right: 10.w, top: 5.h,bottom: 5.h),
          
          child: Row(
            
            children: [
              Container(
              //  padding: EdgeInsets.all(9.w),
                height: 42.h,
                width: 42.h,
                decoration: BoxDecoration(
                color: AppTheme.c.primary.shade100,
                  borderRadius: BorderRadius.circular(12.r)
                  ,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    icon,
                   // width: 20.w,
                  ),
                ),
              ),
              Space.xf(10.5.w),
              Expanded(
                child: Text(
                  title,
                  style: AppText.inter.b2?.w(6),
                ),
               ),
             SvgPicture.asset(
             'assets/images/16 chevron right.svg',
            width: 16.w,
             height: 16.h,
        ),
        
            ],
          ),
        ),
      ),
    );
  }
}
