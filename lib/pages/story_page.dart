import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/data/discover_model.dart';
import 'package:snap/data/user_model.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/theme/text_styles.dart';

import '../widgets/custom_icon_button.dart';
import '../widgets/friend_button.dart';

class StoryPage extends StatelessWidget {
  StoryPage({super.key});
  Size? size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
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
      height: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          //Friends Bar
          SizedBox(
            height: 135.h,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Text(
                  "Friends",
                  style: kTitleTextStyle,
                ),
                SizedBox(
                  height: 115.h,
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
              ],
            ),
          ),
          //Discover Part
          SizedBox(
            height: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 370.h,
                  child: GridView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
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
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black,
                            ],
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              discoverList[index].imageUrl,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 3.h,
                              left: 10.w,
                              child: Text(
                                discoverList[index].text,
                                style: kStoryTextStyle,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFriends(int index) {
    return Column(
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
    );
  }
}
