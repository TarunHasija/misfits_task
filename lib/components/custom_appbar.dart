import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final String title;
  final Color? appbarBgColor;
  final VoidCallback? onBack;
  final TextStyle? titleStyle;
  final Color? backIconColor;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.centerTitle,
    this.appbarBgColor,
    this.titleStyle,
    this.backIconColor,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: appbarBgColor ?? AppColors.surfaceLevel0,
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () {
          if (onBack != null) {
            onBack!();
          } else {
            // Navigator.pop(context);
          }
        },
        icon: Icon(
          Icons.close,
          size: 18.h,
          color: backIconColor ?? AppColors.textNeutral,
        ),
      ),
      centerTitle: centerTitle,
      title: Text(
        title,
        style: titleStyle ?? textTheme.headlineSmall,
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}
