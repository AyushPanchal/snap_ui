import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap/theme/colors.dart';

TextStyle kPageTitleTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: kPageTitleTextColor,
  fontSize: 18.sp,
);
TextStyle kTitleTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  color: kPageTitleTextColor,
  fontSize: 14.sp,
);
TextStyle kFriendDisplayNameTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  color: kPageTitleTextColor,
  fontSize: 12.sp,
);
TextStyle kFriendUserNameTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: kFriendUserNameColor,
  fontSize: 12.sp,
);
TextStyle kStoryTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
  color: Colors.white,
  fontSize: 14.sp,
);

TextStyle kSpotlightUserNameTextStyle = kTitleTextStyle.copyWith(
  color: Colors.white,
  fontSize: 16.sp,
);

TextStyle kSmallGrayTextStyle = GoogleFonts.poppins(
  color: kIconColor.withOpacity(
    0.4,
  ),
  fontSize: 10.h,
);
