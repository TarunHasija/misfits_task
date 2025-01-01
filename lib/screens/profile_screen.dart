import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/components/activities.dart';
import 'package:misfits_task/components/badge_bottom_sheet.dart';
import 'package:misfits_task/components/club_card.dart';
import 'package:misfits_task/components/custom_appbar.dart';
import 'package:misfits_task/components/value_card.dart';
import 'package:misfits_task/utils/assets.dart';
import 'package:misfits_task/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.surfaceLevel0,
      appBar: CustomAppBar(
        title: "Profile ",
        titleStyle: textTheme.titleLarge,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.r,
                backgroundImage: const AssetImage(Assets.profilePic),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.sp),
                    child: Text(
                      "Komal Pandey",
                      style: textTheme.headlineMedium,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Activities(
                          textTheme: textTheme,
                          activityName: "Veteran",
                          onActivityTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24.r),
                                ),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return BadgeBottomSheet(
                                  badgeUrl: Assets.veteran,
                                  textTheme: textTheme,
                                  title: 'Veterans',
                                  description:
                                      'Been to over 30 meetups, knows how to vibe with the crowd, and keeps the spirit alive!',
                                );
                              },
                            );
                          },
                          badgeUrl: Assets.veteran),
                      Activities(
                          textTheme: textTheme,
                          activityName: "The OG",
                          onActivityTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24.r),
                                ),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return BadgeBottomSheet(
                                  badgeUrl: Assets.theOg,
                                  textTheme: textTheme,
                                  title: 'The OG',
                                  description:
                                      'The first-ever Misfits! They’ve been part of the community from the start, making every meetup memorable.',
                                );
                              },
                            );
                          },
                          badgeUrl: Assets.theOg),
                      Activities(
                          textTheme: textTheme,
                          activityName: "Inner Circle",
                          onActivityTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24.r),
                                ),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return BadgeBottomSheet(
                                  badgeUrl: Assets.innerCircle,
                                  textTheme: textTheme,
                                  title: 'Inner Circle',
                                  description:
                                      'This person is part of a close knit Inner circle of a misfits club',
                                );
                              },
                            );
                          },
                          badgeUrl: Assets.innerCircle),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    '"Im a board game fan! I love crafting wild strategies and having fun with friends. Who knew dice could cause such chaos?"',
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueCard(
                    textTheme: textTheme,
                    cardTitle: 'Meet-ups attended',
                    iconImgUrl: Assets.happy,
                    value: '2',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  ValueCard(
                    textTheme: textTheme,
                    cardTitle: 'Active since',
                    iconImgUrl: Assets.calender,
                    value: 'Jun 12',
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
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
                          'Their Active Clubs',
                          style: Theme.of(context).textTheme.bodyLarge,
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
                  ClubCard(
                    textTheme: textTheme,
                    title: 'Poets without borders ',
                    date: 'Jun 24',
                    imgUrl: Assets.cardImage1,
                    location: 'Sec 30, Gurugram',
                    value: '12',
                  ),
                  ClubCard(
                    textTheme: textTheme,
                    title: 'All things pop culture ',
                    date: 'Jun 24',
                    imgUrl: Assets.cardImage2,
                    location: 'Sec 30, Gurugram',
                    value: '1',
                  ),
                  SizedBox(
                    height: 24.h,
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
