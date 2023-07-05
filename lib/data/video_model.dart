class VideoModel {
  final String likes;
  final String shares;
  final String comments;
  final String videoUrl;
  final String videoCreator;

  VideoModel({
    required this.likes,
    required this.videoCreator,
    required this.shares,
    required this.comments,
    required this.videoUrl,
  });
}

List<VideoModel> videos = [
  VideoModel(
    likes: '3.5k',
    shares: '300k',
    comments: '1k',
    videoUrl:
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent-mxp1-1.cdninstagram.com%2Fv%2Ft66.30100-16%2F332514380_677418557531140_3643404735046136159_n.mp4%3Fefg%3DeyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjEwODAuY2xpcHMuYmFzZWxpbmUiLCJxZV9ncm91cHMiOiJbXCJpZ193ZWJfZGVsaXZlcnlfdnRzX290ZlwiXSJ9%26_nc_ht%3Dscontent-mxp1-1.cdninstagram.com%26_nc_cat%3D104%26_nc_ohc%3DVJj03scu6z4AX8sqaT1%26edm%3DALQROFkBAAAA%26vs%3D1326679754951295_3944869963%26_nc_vs%3DHBksFQAYJEdFekUwUk1FWkh6TUcyZ0NBRl94Wm8xTl9ZOHlicFIxQUFBRhUAAsgBABUAGCRHTktxSVFQM01GQnVmaW9IQU9wZjh0aW1XUDA5YnBSMUFBQUYVAgLIAQAoABgAGwAVAAAm2L%252F%252F%252FIrI8T8VAigCQzMsF0A11T987ZFoGBZkYXNoX2Jhc2VsaW5lXzEwODBwX3YxEQB1%252FgcA%26_nc_rid%3Db2e51ef784%26ccb%3D7-5%26oh%3D00_AfDahD39oe3U0MeJnmG_RAboOMbBeAK9CFeYn_K_ZQjJ6w%26oe%3D64A71AD3%26_nc_sid%3Dfc8dfb&type=mp4&dlheader=video/mp4&title=15767590322',
    videoCreator: '@ayush_.a1',
  ),
  VideoModel(
    likes: '3.5k',
    shares: '300k',
    comments: '1k',
    videoUrl:
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft66.30100-16%2F322058084_934113741128212_7783526238844521647_n.mp4%3F_nc_ht%3Dscontent.cdninstagram.com%26_nc_cat%3D104%26_nc_ohc%3DH32rtV7b6z8AX_S46eZ%26edm%3DAPs17CUBAAAA%26ccb%3D7-5%26oh%3D00_AfCvXv7TYFFt4vxu3tkyIgyiFPdVX_PM8si3rfhCLPduVg%26oe%3D64A6A48D%26_nc_sid%3D10d13b&type=mp4&dlheader=video/mp4&title=96672516720',
    videoCreator: '@harr.zzy',
  ),
  VideoModel(
    likes: '3.5k',
    shares: '300k',
    comments: '1k',
    videoUrl:
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent-lga3-2.cdninstagram.com%2Fv%2Ft66.30100-16%2F318616851_946236070058959_3973367266556730683_n.mp4%3Fefg%3DeyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjEwODAuY2xpcHMuYmFzZWxpbmUiLCJxZV9ncm91cHMiOiJbXCJpZ193ZWJfZGVsaXZlcnlfdnRzX290ZlwiXSJ9%26_nc_ht%3Dscontent-lga3-2.cdninstagram.com%26_nc_cat%3D107%26_nc_ohc%3DvkF8SvArUg4AX9-ABga%26edm%3DALQROFkBAAAA%26vs%3D3395218944066651_730214022%26_nc_vs%3DHBksFQAYJEdCTzEtUkxQVzlUQW1Gd0RBRHRkUnlWNlBDUTNicFIxQUFBRhUAAsgBABUAGCRHUDhSQ1JRR29HMXQ0ZWNLQUc1OTNHeFRiNjV6YnBSMUFBQUYVAgLIAQAoABgAGwAVAAAmyM%252Bhv4qK5D8VAigCQzMsF0AyszMzMzMzGBZkYXNoX2Jhc2VsaW5lXzEwODBwX3YxEQB1%252FgcA%26_nc_rid%3Dff565dc04e%26ccb%3D7-5%26oh%3D00_AfC3zYjjKiK2yzki5x-_-wkNtNqcYRa1ORiBnNQYXoR4Uw%26oe%3D64A71594%26_nc_sid%3Dfc8dfb&type=mp4&dlheader=video/mp4&title=49539966789',
    videoCreator: '@rekha_pro',
  ),
  VideoModel(
    likes: '3.5k',
    shares: '300k',
    comments: '1k',
    videoUrl:
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft66.30100-16%2F121789334_967983554343011_5307360030951080539_n.mp4%3F_nc_ht%3Dscontent.cdninstagram.com%26_nc_cat%3D111%26_nc_ohc%3DB4-gwZbF8NMAX-jNIha%26edm%3DAPs17CUBAAAA%26ccb%3D7-5%26oh%3D00_AfDB-SBOes2ODewoXzxmJrWe7MhCaAPyqgfN3Oj22kB_SQ%26oe%3D64A68C50%26_nc_sid%3D10d13b&type=mp4&dlheader=video/mp4&title=90732445528',
    videoCreator: '@bheem_patel',
  ),
  VideoModel(
    likes: '3.5k',
    shares: '300k',
    comments: '1k',
    videoUrl:
        'https://player.instavideosave.com/?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft66.30100-16%2F43817023_776706924034976_4024866887031600684_n.mp4%3F_nc_ht%3Dscontent.cdninstagram.com%26_nc_cat%3D108%26_nc_ohc%3DdlIwDllZel8AX93rQfu%26edm%3DAPs17CUBAAAA%26ccb%3D7-5%26oh%3D00_AfDXu8Y-YiukjxvEBiUx9E2Dqw9wFOonAXy6K-JQKBZqag%26oe%3D64A71673%26_nc_sid%3D10d13b&type=mp4&dlheader=video/mp4&title=9246351704',
    videoCreator: '@gajera_ben',
  ),
];
