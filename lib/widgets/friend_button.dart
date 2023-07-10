import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/user_model.dart';
import '../theme/colors.dart';

class FriendButton extends StatelessWidget {
  final int index;
  const FriendButton({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1.h),
          height: 80.h,
          width: 65.h,
          decoration: BoxDecoration(
            border: Border.all(color: kPurpleColor, width: 2.h),
            color: kFriendsBGColor,
            shape: BoxShape.circle,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 74.h,
                child: Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          userList[index].profilePhoto,
                          fit: BoxFit.cover,
                          height: 75,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        decoration: BoxDecoration(
                            color: kPurpleColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: const Icon(
                          Icons.person_add_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
