import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/text_styles.dart';

class SpotlightActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const SpotlightActionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35.sp,
          color: Colors.white,
        ),
        label.isNotEmpty
            ? Text(
                label,
                style: kFriendDisplayNameTextStyle.copyWith(
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
