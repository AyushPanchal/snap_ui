import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/theme/text_styles.dart';

class ChatOpenPage extends StatelessWidget {
  final String name;
  final Widget image;
  const ChatOpenPage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
          ],
        ),
      ),
    );
  }

  Container _appBar() {
    return Container(
      margin: EdgeInsets.only(
        top: 10.h,
        left: 10.w,
        right: 10.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              image,
              SizedBox(
                width: 10.w,
              ),
              Text(
                name,
                style: kSmallGrayTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 2.h,
                ),
                decoration: const BoxDecoration(
                  color: kGrayBGColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Icon(
                  Icons.call,
                  color: Colors.black,
                  size: 22.h,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 2.h,
                ),
                decoration: const BoxDecoration(
                  color: kGrayBGColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Icon(
                  Icons.videocam,
                  color: Colors.black,
                  size: 22.h,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
              )
            ],
          ),
        ],
      ),
    );
  }
}
