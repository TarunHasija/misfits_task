import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/utils/colors.dart';

class ValueCard extends StatelessWidget {
  final bool isSmallCard;
  final String cardTitle;
  final String iconImgUrl;
  final String value;
  const ValueCard({
    super.key,
    required this.textTheme,
    required this.cardTitle,
    required this.iconImgUrl,
    required this.value,
    this.isSmallCard = false,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12.h),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.surfaceLevel2,
            borderRadius: BorderRadius.all(Radius.circular(16.r))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cardTitle,
              style: textTheme.bodySmall?.copyWith(
                color: AppColors.textNeutralVarient,
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: isSmallCard ? 24.h : 32.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(iconImgUrl),
                    )),
                  ),
                  Text(
                    value,
                    style: !isSmallCard
                        ? textTheme.headlineSmall
                        : textTheme.titleMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
