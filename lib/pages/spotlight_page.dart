import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap/data/video_model.dart';
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
  double currentPageValue = 0.0;
  final PageController pageController = PageController();

  int initialIndex = 0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
    videoHandle(initialIndex);
    super.initState();
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
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.vertical,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      _videoPlayerController!.value.isInitialized
                          ? Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio:
                                      _videoPlayerController!.value.aspectRatio,
                                  child: VideoPlayer(_videoPlayerController!),
                                ),
                                Positioned(
                                  bottom: 2.h,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.play_arrow_rounded,
                                              color: Colors.white,
                                              size: 15.h,
                                            ),
                                            Text(
                                              '3.5K',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 3.w,
                                            right: 3.w,
                                            bottom: 5.h,
                                          ),
                                          child: Text(
                                            videos[index].videoCreator,
                                            style: kSpotlightUserNameTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height -
                                      200.h,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  );
                },
                onPageChanged: (index) {
                  _videoPlayerController!.dispose();
                  videoHandle(index);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void videoHandle(int index) {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(videos[index].videoUrl),
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
  }

  @override
  void dispose() {
    _videoPlayerController!.removeListener(_videoPlayerListener!);
    _videoPlayerController!.dispose();
    super.dispose();
  }
}
