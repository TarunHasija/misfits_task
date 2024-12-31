import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:misfits_task/components/custom_appbar.dart';
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
        titleStyle:  textTheme.titleLarge,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100.r)),
                child: Image.asset(
                  'assets/images/profile-pic.jpg',
                  width: 200.w,
                  height: 200.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.sp),
                child: Text(
                  "Komal Pandey",
                  style: textTheme.headlineMedium,
                ),
              ),
              Row()
            ],
          ),
        )),
      ),
    );
  }
}
