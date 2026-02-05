import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:convo_new/configs/configs.dart';

class OutlineTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? borderColor;
  final Color? textColor;

  const OutlineTextButton({
    super.key,
    required this.title,
    required this.onTap,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 53.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
         // padding: UIProps.btnPadMed,
          shape: RoundedRectangleBorder(),
          side: BorderSide(
            color: borderColor ?? AppTheme.c.text.shade800!,
            width: 1.w,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            title,
            style: AppText.inter.b2b?.w(7).cl(
              textColor ?? AppTheme.c.primary.shade100!,
            ),
          ),
        ),
      ),
    );
  }
}
