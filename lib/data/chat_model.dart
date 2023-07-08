import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Status {
  receivedSnap,
  openedSnap,
  openedMessage,
  receivedMessage,
  receivedMessageOpened,
  sentSnap,
  sentSnapOpened,
  sentMessage,
  sentMessageOpened,
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
    this.streakCount,
    this.time,
    this.status,
  }) {
    const kPinkIconColor = Color(0XFFEA3C53);
    const kBlueIconColor = Color(0xff37ADDF);
    IconData kUnfilledPaperPlane = CupertinoIcons.paperplane;
    IconData kFilledPaperPlane = CupertinoIcons.paperplane_fill;
    IconData kReceivedMessageSeenIcon = Icons.mode_comment_outlined;
    IconData kReceivedSnapOpened = CupertinoIcons.square;
    IconData kReceivedSnapUnOpened = CupertinoIcons.square_fill;
    switch (status) {
      case Status.openedMessage:
        iconColor = kBlueIconColor;
        icon = kUnfilledPaperPlane;
      case Status.openedSnap:
        iconColor = kPinkIconColor;
        icon = kReceivedSnapOpened;
      case Status.sentSnap:
        iconColor = kPinkIconColor;
        icon = kFilledPaperPlane;
      case Status.sentMessage:
        iconColor = kBlueIconColor;
        icon = kFilledPaperPlane;
      case Status.receivedMessageOpened:
        iconColor = kBlueIconColor;
        icon = kReceivedMessageSeenIcon;
      case Status.receivedMessage:
        iconColor = kBlueIconColor;
        icon = kFilledPaperPlane;
      case Status.sentMessageOpened:
        iconColor = kBlueIconColor;
        icon = kUnfilledPaperPlane;
      case Status.sentSnapOpened:
        iconColor = kBlueIconColor;
        icon = kUnfilledPaperPlane;
      case Status.receivedSnap:
        icon = kReceivedSnapUnOpened;
        iconColor = kPinkIconColor;
      default:
        iconColor = Colors.transparent;
    }
  }
}

List<ChatModel> chatList = [
  ChatModel(
    name: "Harsh patel",
    status: Status.receivedSnap,
    streakCount: 1000,
    time: '2h',
  ),
  ChatModel(
    name: "Kunj patel",
    status: Status.openedSnap,
    streakCount: 269,
    time: '1h',
  ),
  ChatModel(
    name: "Rekha pachani",
    status: Status.openedMessage,
    streakCount: 562,
    time: '2m',
  ),
  ChatModel(
    name: "Srushti Gajera",
    status: Status.receivedMessage,
    streakCount: 864,
    time: '12h',
  ),
  ChatModel(
    name: "Disha Patel",
    status: Status.receivedMessageOpened,
    streakCount: 100,
    time: '12m',
  ),
  ChatModel(
    name: "Aditi Patel",
    status: Status.sentSnap,
    streakCount: 180,
    time: '2s',
  ),
  ChatModel(
    name: "Janvi Patel",
    status: Status.sentSnapOpened,
    streakCount: 596,
    time: '5h',
  ),
  ChatModel(
    name: "Babu RB",
    status: Status.sentMessage,
    streakCount: 625,
    time: '22h',
  ),
  ChatModel(
    name: "Kano RB",
    status: Status.sentMessageOpened,
    streakCount: 212,
    time: '19m',
  ),
];
