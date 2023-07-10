import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

class SnapInChat extends StatelessWidget {
  const SnapInChat({
    super.key,
    required this.name,
    required this.icon,
    required this.snapMessage,
    required this.lineColor,
  });

  final String name;
  final IconData icon;
  final Color lineColor;
  final String snapMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              color: lineColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Container(
                height: 45.h,
                width: 2.w,
                color: lineColor,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(
                    3.h,
                  ),
                  padding: EdgeInsets.only(
                    left: 18.w,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kIconColor.withOpacity(
                        0.3,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                  ),
                  height: 45.h,
                  child: Row(
                    children: [
                      Icon(
                        icon,
                        color: kPinkIconColor,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        snapMessage,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: kIconColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
