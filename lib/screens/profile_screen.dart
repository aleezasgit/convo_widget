import 'package:convo_new/widgets/app_bar.dart';
import 'package:convo_new/widgets/outlined_button.dart';
import 'package:convo_new/widgets/primary_button.dart';
import 'package:convo_new/widgets/pro_optiontile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convo_new/configs/configs.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
     decoration: BoxDecoration(
      color: AppTheme.c.purple
     ),
      child: Scaffold(
        appBar: const CustomProfileAppBar(title: 'Profile'),
        body: SingleChildScrollView(
          
          padding: Space.h2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.y2!,
      
              /// ================= PROFILE HEADER (INLINE) =================
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: const AssetImage(
                      'assets/images/Ellipse 1995.png',
                    ),
                  ),
                  Space.xf(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mufidu',
                        style: AppText.b2bm,
                      ),
                      Space.yf(2),
                      Text(
                        'user123@gmail.com',
                        style: AppText.inter.b2?.w(4)
                            ?.cl(AppTheme.c.text.main!),
                      ),
                      
                     
                      
                    ],
                  ),
                ],
              ),
      
              Space.yf(20),
      
              /// ================= PREMIUM ACCESS CARD =================
              Container(
                padding: EdgeInsets.only(top: 20.h,bottom: 20.h,left: 20.w),
                decoration: BoxDecoration(
                  color: AppTheme.c.primary.shade300,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Premium Access',
                            style: AppText.b1bm?.w(4),
                          ),
                          Space.yf(8),
                          Text(
                            'Access all advanced features in your premium access',
                            style: AppText.inter.b1?.w(4)
                                ?.cl(AppTheme.c.text.main!),
                          ),
                          Space.yf(8),
                           Container(
                            padding: EdgeInsetsDirectional.symmetric(vertical: 10.h,horizontal: 16.h),
                            
                        color: AppTheme.c.purple,
                        height: 38.h,
                        width: 115.w,
                        decoration: BoxDecoration(
                          color: AppTheme.c.primary.shade500,
                          borderRadius: BorderRadius.circular(12.r)
                        ),

                        child: Center(child: Text('Unlock Premium',style: AppText.inter.l1?.w(7).copyWith(color: AppTheme.c.white))),
                      )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/noto-v1_crown.svg',
                      width: 56.w,
                    ),
                  ],
                ),
              ),
      
              Space.yf(20.h),
      
              /// ================= OPTION TILES =================
              ProfileOptionTile(
                icon: 'assets/images/13 user.svg',
                title: 'Edit Profile',
                onTap: () {},
              ),
              Space.yf(12.h),
              ProfileOptionTile(
                icon: 'assets/images/uil_setting.svg',
                title: 'Setting',
                onTap: () {},
              ),
             Space.yf(12.h),

              ProfileOptionTile(
                icon: 'assets/images/03 question.svg',
                title: 'My Achievements',
                onTap: () {},
              ),
           Space.yf(12.h),

              ProfileOptionTile(
                icon: 'assets/images/96 mood overjoyed.svg',
                title: 'Locked Journals',
                onTap: () {},
              ),
       Space.yf(12.h),

              ProfileOptionTile(
                icon: 'assets/images/87 exclamation mark circle.svg',
                title: 'Support',
                onTap: () {},
              ),
               Space.yf(12.h),

            ProfileOptionTile(
                icon: 'assets/images/03 question.svg',
                title: "FAQ's",
                onTap: () {},
              ),
      
              Space.yf(24.h),
      
              /// ================= DELETE BUTTON =================
             PrimaryIconButton(
  title: 'Delete Account',
  svgIcon: 'assets/images/25 trash.svg',
  onTap: () {},
  backgroundColor: AppTheme.c.primary.main,
  textColor: AppTheme.c.white,
),

      
              Space.yf(12.h),
      
              /// ================= LOGOUT BUTTON =================
             OutlineTextButton(
  title: 'Logout',
  onTap: () {},
  borderColor: AppTheme.c.primary.main,
  textColor: AppTheme.c.primary.main,
),

      
              Space.bottom!,
      
              
            ],
          ),
        ),
      ),
    );
  }
}
