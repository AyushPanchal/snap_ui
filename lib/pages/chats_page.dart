import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap/data/chat_model.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/widgets/custom_icon_button.dart';

import '../theme/text_styles.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBar(),
            _switches(),
            _chats(),
          ],
        ),
      ),
    );
  }

  Expanded _chats() {
    return Expanded(
      child: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 49.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            margin: index == 0 ? EdgeInsets.only(top: 10.h) : EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                top: index == 0
                    ? const BorderSide(
                        color: kSwitchBGColor,
                      )
                    : BorderSide.none,
                bottom: const BorderSide(
                  color: kSwitchBGColor,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      height: 40.w,
                      child: CustomIconButton(
                        child: chatList[index].gender == Gender.male
                            ? Image.asset(
                                'assets/boy.png',
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/girl.png',
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${chatList[index].name}',
                          style: GoogleFonts.poppins(
                            fontSize: 13.h,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              chatList[index].icon,
                              color: chatList[index].iconColor,
                              size: 13.h,
                            ),
                            SizedBox(
                              width: 2.5.w,
                            ),
                            Text(
                              '${chatList[index].statusString}',
                              style: kSmallGrayTextStyle,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 2.h,
                              width: 2.h,
                              decoration: BoxDecoration(
                                color: kIconColor.withOpacity(
                                  0.4,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '${chatList[index].time}',
                              style: kSmallGrayTextStyle,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 2.h,
                              width: 2.h,
                              decoration: BoxDecoration(
                                color: kIconColor.withOpacity(
                                  0.4,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '${chatList[index].streakCount} 🔥',
                              style: kSmallGrayTextStyle.copyWith(
                                  color: Colors.black, fontSize: 10.h),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.photo_camera,
                  size: 22.h,
                  color: kIconColor,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container _switches() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.w,
        top: 18.h,
      ),
      height: 28.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: switchIcons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: CustomSwitch(
                child: Icon(
                  switchIcons[index],
                  size: 20.sp,
                  color: kIconColor,
                ),
              ),
            );
          }),
    );
  }

  Padding _appBar() {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.w,
        right: 8.w,
        top: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomIconButton(
                child: Image.asset('assets/boy.png'),
              ),
              SizedBox(
                width: 3.w,
              ),
              CustomIconButton(
                child: Icon(
                  Icons.search_rounded,
                  size: 24.h,
                  color: kIconColor,
                ),
              ),
            ],
          ),
          Text(
            "Chats",
            style: kPageTitleTextStyle,
          ),
          Row(
            children: [
              CustomIconButton(
                child: Icon(
                  Icons.person_add_alt_1_rounded,
                  size: 24.h,
                  color: kIconColor,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomIconButton(
                child: Icon(
                  Icons.more_horiz_rounded,
                  size: 24.h,
                  color: kIconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

List<IconData> switchIcons = [
  Icons.chat_rounded,
  CupertinoIcons.chat_bubble_2_fill,
  Icons.groups_rounded,
  Icons.emoji_emotions_rounded,
  CupertinoIcons.plus,
];
