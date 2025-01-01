import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/components/value_card.dart';
import 'package:misfits_task/utils/assets.dart';
import 'package:misfits_task/utils/colors.dart';

class ClubCard extends StatelessWidget {
  final String title;
  final String location;
  final String value;
  final String date;
  final String imgUrl;

  const ClubCard({
    super.key,
    required this.textTheme,
    required this.title,
    required this.location,
    required this.value,
    required this.date,
    required this.imgUrl,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadow.withOpacity(0.07),
            spreadRadius: -4,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: AppColors.cardShadow.withOpacity(0.07),
            spreadRadius: -2,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          width: .4.h,
          color: AppColors.strokeNeutral,
        ),
        color: AppColors.surfaceLevel1,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cardShadow.withOpacity(0.03),
                          spreadRadius: 4,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                        BoxShadow(
                          color: AppColors.cardShadow.withOpacity(0.06),
                          spreadRadius: -4,
                          blurRadius: 8,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(18.r),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imgUrl),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(6.h),
                      height: 36.h,
                      width: 36.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.strokeNeutralVarient,
                          width: .4.h,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(16.r),
                          topLeft: Radius.circular(18.r),
                        ),
                        color: AppColors.surfaceLevel2,
                      ),
                      child: Image.asset(Assets.dice),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          height: 16.h,
                          width: 16.h,
                          Assets.pin,
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            location,
                            style: textTheme.bodySmall?.copyWith(
                              color: AppColors.textNeutralVarient,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h),
            child: Row(
              children: [
                ValueCard(
                  textTheme: textTheme,
                  cardTitle: 'Meet-ups attended',
                  iconImgUrl: Assets.startstruck,
                  value: value,
                  isSmallCard: true,
                ),
                SizedBox(
                  width: 12.w,
                ),
                ValueCard(
                  textTheme: textTheme,
                  cardTitle: 'Active since',
                  iconImgUrl: Assets.calender,
                  value: date,
                  isSmallCard: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
