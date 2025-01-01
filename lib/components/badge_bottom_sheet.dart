import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/utils/colors.dart';

class BadgeBottomSheet extends StatelessWidget {
  final String title;
  final String description;
  final String badgeUrl;
  const BadgeBottomSheet(
      {super.key, required this.textTheme, required this.badgeUrl, required this.title, required this.description});
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          color: AppColors.surfaceLevel0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 24.h,
                    color: AppColors.textNeutralVarient,
                  )),
            ),
          ),
          Container(
            height: 128.h,
            width: 128.h,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(badgeUrl))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 1.h,
                          color: AppColors.strokeNeutralVarient,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text(
                          title,
                          style: textTheme.headlineLarge,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 1.h,
                          color: AppColors.strokeNeutralVarient,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  description,
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.h),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(AppColors.surfacePrimary),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'cool!',
                  style: textTheme.labelLarge
                      ?.copyWith(color: AppColors.textprimary),
                )),
          )
        ],
      ),
    );
  }
}
