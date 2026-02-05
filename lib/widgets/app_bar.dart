import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convo_new/configs/configs.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final bool showBack;

  const CustomProfileAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return AppBar(
      elevation: 0,
      backgroundColor: AppTheme.c.purple,
      foregroundColor: AppTheme.c.text.main,
      centerTitle: false,
      automaticallyImplyLeading: false,

      /// ================= LEADING =================
      leading: showBack
          ? IconButton(
              onPressed: onBack ?? () => Navigator.pop(context),
              icon: SvgPicture.asset(
                'assets/images/07 arrow left.svg',
                width: 24.w,
                height: 24.h,
              ),
            )
          : null,

      /// ================= TITLE =================
      title: Text(
        title,
        style: AppText.inter.b2b?.w(7),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
