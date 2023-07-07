import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Status {
  openedSnap,
  openedMessage,
  sentSnap,
  sentMessage,
  sentMessageOpened,
  receivedSnap,
  receivedMessage,
}

class ChatModel {
  String? name;
  IconData? icon;
  int? streakCount;
  String? time;
  Color? iconColor;
  Status? status;
  ChatModel({
    this.name,
    this.icon,
    this.streakCount,
    this.time,
    this.iconColor,
    this.status,
  }) {
    switch (status) {
      case Status.openedMessage:
        iconColor = const Color(0xff37ADDF);
        icon = CupertinoIcons.paperplane;
      case Status.openedSnap:
        iconColor = const Color(0XFFEA3C53);
        icon = CupertinoIcons.paperplane;
      case Status.sentSnap:
        iconColor = const Color(0XFFEA3C53);
        icon = CupertinoIcons.paperplane_fill;
      case Status.sentMessage:
        iconColor = const Color(0xff37ADDF);
        icon = CupertinoIcons.paperplane_fill;
      case Status.receivedMessage:
        iconColor = const Color(0xff37ADDF);
        icon = Icons.mode_comment_outlined;
      case Status.sentMessageOpened:
        iconColor = const Color(0xff37ADDF);
        icon = CupertinoIcons.paperplane;
      case Status.receivedSnap:
        iconColor = const Color(0XFFEA3C53);
      default:
        iconColor = Colors.transparent;
    }
  }
}
