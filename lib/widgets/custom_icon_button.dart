import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;
  const CustomIconButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      decoration: const BoxDecoration(
        color: kGrayBGColor,
        shape: BoxShape.circle,
      ),
      padding: child is Icon
          ? EdgeInsets.all(5.h)
          : EdgeInsets.only(
              top: 2.h,
              left: 8.h,
              right: 8.h,
            ),
      child: child,
    );
  }
}
