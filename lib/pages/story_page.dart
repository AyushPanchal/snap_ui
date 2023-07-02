import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/data/discover_model.dart';
import 'package:snap/data/user_model.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/theme/text_styles.dart';

import '../widgets/custom_icon_button.dart';

class StoryPage extends StatelessWidget {
  StoryPage({super.key});
  Size? size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getAppBar(),
              _getBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getAppBar() {
    return Container(
      margin: EdgeInsets.all(5.h),
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomIconButton(
                child: Image.asset('assets/boy.png'),
              ),
              SizedBox(
                width: 5.w,
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
            'Stories',
            style: kPageTitleTextStyle,
          ),
          Row(
            children: [
              CustomIconButton(
                child: Icon(
                  Icons.person_add_rounded,
                  size: 24.h,
                  color: kIconColor,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomIconButton(
                child: Icon(
                  FeatherIcons.moreHorizontal,
                  color: kIconColor,
                  size: 24.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getBody() {
    return Container(
      height: size!.height + 140.h,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Friends",
            style: kTitleTextStyle,
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 65.h,
                  child: Column(
                    children: [
                      _getFriends(index),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10.w,
                );
              },
            ),
          ),
          Text(
            'Discover',
            style: kTitleTextStyle.copyWith(
              fontSize: 16.sp,
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: discoverList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.55.h,
                mainAxisSpacing: 5.h,
                crossAxisSpacing: 5.h,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        discoverList[index].imageUrl,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFriends(int index) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FriendButton(
            index: index,
          ),
          Text(
            userList[index].displayName,
            style: kFriendDisplayNameTextStyle,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            userList[index].username,
            style: kFriendUserNameTextStyle,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

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
