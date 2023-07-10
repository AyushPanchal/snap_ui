import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/theme/my_icons.dart';
import 'package:snap/theme/text_styles.dart';
import 'package:snap/widgets/custom_icon_button.dart';

import '../widgets/snap_in_chat.dart';

class ChatOpenPage extends StatelessWidget {
  final String name;
  final Widget image;
  const ChatOpenPage({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _appBar(),
            _time(),
            _snaps(),
          ],
        ),
      ),
      bottomSheet: _bottomSheet(),
    );
  }

  SafeArea _bottomSheet() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: kGrayBGColor,
            ),
          ),
        ),
        height: 45.h,
        child: Row(
          children: [
            const CustomIconButton(
              child: Icon(
                CupertinoIcons.camera,
                color: kIconColor,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPinkIconColor,
                    cursorHeight: 15.h,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 8.h,
                      ),
                      hintText: "Send a Chat",
                      hintStyle: GoogleFonts.poppins(
                        color: kIconColor.withOpacity(0.5),
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: kIconColor,
                      ),
                      filled: true,
                      border: InputBorder.none,
                      fillColor: kGrayBGColor,
                    ),
                  ),
                ),
              ),
            ),
            Icon(
              CupertinoIcons.smiley,
              size: 22.h,
              color: kIconColor,
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.photo_library_rounded,
              size: 22.h,
              color: kIconColor,
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              CupertinoIcons.add_circled,
              size: 22.h,
              color: kIconColor,
            )
          ],
        ),
      ),
    );
  }

  Column _snaps() {
    return Column(
      children: [
        SnapInChat(
          name: name,
          icon: CupertinoIcons.square,
          snapMessage: 'Opened',
          lineColor: kBlueIconColor,
        ),
        SnapInChat(
          name: 'ME',
          icon: kFilledPaperPlane,
          snapMessage: 'Sent',
          lineColor: kPinkIconColor,
        ),
      ],
    );
  }

  Padding _time() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "TODAY",
          style: GoogleFonts.inter(
            fontSize: 10.sp,
            color: kIconColor,
          ),
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
      padding: EdgeInsets.only(
        bottom: 10.h,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kGrayBGColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              image,
              SizedBox(
                width: 1.w,
              ),
              Text(
                name,
                style: kSmallGrayTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18.sp,
                  overflow: TextOverflow.ellipsis,
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
