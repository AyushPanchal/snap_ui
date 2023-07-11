import 'package:flutter/material.dart';
import 'package:snap/pages/camera_page.dart';
import 'package:snap/pages/chats_page.dart';
import 'package:snap/pages/map_page.dart';
import 'package:snap/pages/spotlight_page.dart';
import 'package:snap/pages/story_page.dart';

List<Widget> pages = [
  const MapPage(),
  ChatsPage(),
  CameraPage(),
  StoryPage(),
  const SpotlightPage(),
];
