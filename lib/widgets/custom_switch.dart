import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class CustomSwitch extends StatelessWidget {
  final Widget child;
  const CustomSwitch({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 3.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18.r,
        ),
        color: kSwitchBGColor,
      ),
      child: child,
    );
  }
}
