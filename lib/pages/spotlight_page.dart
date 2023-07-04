import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/theme/colors.dart';
import 'package:snap/theme/text_styles.dart';
import 'package:snap/widgets/custom_icon_button.dart';
import 'package:video_player/video_player.dart';

class SpotlightPage extends StatefulWidget {
  const SpotlightPage({super.key});

  @override
  State<SpotlightPage> createState() => _SpotlightPageState();
}

class _SpotlightPageState extends State<SpotlightPage> {
  VideoPlayerController? _videoPlayerController;
  VoidCallback? _videoPlayerListener;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent-otp1-1.cdninstagram.com%2Fv%2Ft66.30100-16%2F10000000_275525168272919_2160546286477797908_n.mp4%3Fefg%3DeyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjEwODAuY2xpcHMuaGlnaCIsInFlX2dyb3VwcyI6IltcImlnX3dlYl9kZWxpdmVyeV92dHNfb3RmXCJdIn0%26_nc_ht%3Dscontent-otp1-1.cdninstagram.com%26_nc_cat%3D111%26_nc_ohc%3Dgp99s4aBfzUAX-vfLJI%26edm%3DALQROFkBAAAA%26vs%3D1274108549885491_365605619%26_nc_vs%3DHBksFQAYJEdJQ1dtQUFYRnNpemx2b0FBQlJxVElabXpmc2RicFIxQUFBRhUAAsgBABUAGCRHQ0Y5MFFMX3RMQ0swTnNCQU4tZzJpY1QzWFZ6YnBSMUFBQUYVAgLIAQAoABgAGwAVAAAmxPnV68n68D8VAigCQzMsF0BAogxJul41GBJkYXNoX2hpZ2hfMTA4MHBfdjERAHX%252BBwA%253D%26_nc_rid%3D64110e098a%26ccb%3D7-5%26oh%3D00_AfDnt9vsZurbTC84T8sdLOTI42UfJUbDU_uF4wg-stQNIA%26oe%3D64A5D904%26_nc_sid%3Dfc8dfb&type=mp4&dlheader=video/mp4&title=31217104366',
      ),
    );
    _videoPlayerListener = () {
      if (_videoPlayerController!.value.position ==
          _videoPlayerController!.value.duration) {
        // Video finished playing, start playing again
        _videoPlayerController!.seekTo(Duration.zero);
        _videoPlayerController!.play();
      }
    };
    _videoPlayerController!.addListener(_videoPlayerListener!);
    _videoPlayerController!.initialize().then((_) {
      setState(() {});
      _videoPlayerController!.play();
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController!.removeListener(_videoPlayerListener!);
    _videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  child: Image.asset('assets/boy.png'),
                ),
                Text(
                  'Spotlight',
                  style: kPageTitleTextStyle.copyWith(
                    color: Colors.white,
                  ),
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
          ),
          SizedBox(
            height: 5.h,
          ),
          _videoPlayerController!.value.isInitialized
              ? Center(
                  child: AspectRatio(
                      aspectRatio: _videoPlayerController!.value.aspectRatio,
                      child: VideoPlayer(_videoPlayerController!)),
                )
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 200.h,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
