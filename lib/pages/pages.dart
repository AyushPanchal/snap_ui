import 'package:flutter/material.dart';
import 'package:snap/pages/camera_page.dart';
import 'package:snap/pages/chats_page.dart';
import 'package:snap/pages/map_page.dart';
import 'package:snap/pages/play_page.dart';
import 'package:snap/pages/story_page.dart';

List<Widget> pages = [
  const MapPage(),
  const ChatsPage(),
  const CameraPage(),
  StoryPage(),
  const PlayPage(),
];
