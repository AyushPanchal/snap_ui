import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          children: [
            Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
