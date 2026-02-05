import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convo_new/configs/configs.dart';

class PrimaryIconButton extends StatelessWidget {
  final String title;
  final String svgIcon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? textColor;

  const PrimaryIconButton({
    super.key,
    required this.title,
    required this.svgIcon,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.r),
        
        
      ),
      child: ElevatedButton(
        
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor ?? AppTheme.c.primary.main,
          //padding: UIProps.btnPadMed,
         
          elevation: 0,
        ),
        child: SizedBox(
          width: 357.w,
          height: 53.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              SvgPicture.asset(
                svgIcon,
                width: 20.w,
                height: 20.h,
                colorFilter: ColorFilter.mode(
                  textColor ?? AppTheme.c.white!,
                  BlendMode.srcIn,
                ),
              ),
              Space.xf(16.w),
              Text(
                title,
                style: AppText.inter.b2b?.w(7).cl(
                  textColor ?? AppTheme.c.white!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
