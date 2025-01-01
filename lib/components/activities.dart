
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Activities extends StatelessWidget {
  final String badgeUrl;
  final String activityName;
  final VoidCallback onActivityTap;
  const Activities({
    super.key,
    required this.textTheme,
    required this.activityName,
    required this.onActivityTap,
    required this.badgeUrl,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:8.w),
      child: GestureDetector(
        onTap: onActivityTap,
        child: Column(
          children: [
            Container(
              height: 56.h,
              width: 56.h,
              margin: EdgeInsets.only(bottom: 4.h, left: 8.w, right: 8.w),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(badgeUrl))),
            ),
            Text(
              activityName,
              style: textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}
