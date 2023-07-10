import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/my_icons.dart';

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

enum Gender {
  male,
  female,
}

class ChatModel {
  String? name;
  IconData? icon;
  int? streakCount;
  String? time;
  Color? iconColor;
  Status? status;
  Gender? gender;
  String? statusString;
  ChatModel({
    this.name,
    this.streakCount,
    this.time,
    this.status,
    this.gender = Gender.male,
  }) {
    switch (status) {
      case Status.openedMessage:
        iconColor = kBlueIconColor;
        icon = kUnfilledPaperPlane;
        statusString = 'Opened';
      case Status.openedSnap:
        iconColor = kPinkIconColor;
        icon = kReceivedSnapOpened;
        statusString = 'Double tap to reply';
      case Status.sentSnap:
        iconColor = kPinkIconColor;
        icon = kFilledPaperPlane;
        statusString = 'Delivered';
      case Status.sentMessage:
        iconColor = kBlueIconColor;
        icon = kFilledPaperPlane;
        statusString = 'Sent';
      case Status.receivedMessageOpened:
        iconColor = kBlueIconColor;
        icon = kReceivedMessageSeenIcon;
        statusString = 'Received';
      case Status.receivedMessage:
        iconColor = kBlueIconColor;
        icon = kFilledPaperPlane;
        statusString = 'New Chat';
      case Status.sentMessageOpened:
        iconColor = kBlueIconColor;
        icon = kUnfilledPaperPlane;
        statusString = 'Opened';
      case Status.sentSnapOpened:
        iconColor = kPinkIconColor;
        icon = kUnfilledPaperPlane;
        statusString = 'Opened';
      case Status.receivedSnap:
        icon = kReceivedSnapUnOpened;
        iconColor = kPinkIconColor;
        statusString = 'New Snap';
      default:
        iconColor = Colors.transparent;
    }
  }
}

List<ChatModel> chatList = [
  ChatModel(
    name: "MF🤺",
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
    gender: Gender.female,
  ),
  ChatModel(
    name: "Disha Patel",
    status: Status.receivedMessageOpened,
    streakCount: 100,
    time: '12m',
    gender: Gender.female,
  ),
  ChatModel(
    name: "Aditi Patel",
    status: Status.sentSnap,
    streakCount: 180,
    time: '2s',
    gender: Gender.female,
  ),
  ChatModel(
    name: "Janvi Patel",
    status: Status.sentSnapOpened,
    streakCount: 596,
    time: '5h',
    gender: Gender.female,
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
  ChatModel(
    name: "Maggie Prajapati",
    status: Status.sentSnapOpened,
    streakCount: 412,
    time: '20s',
    gender: Gender.female,
  ),
  ChatModel(
    name: "Nisha Ahir",
    status: Status.sentSnap,
    streakCount: 269,
    time: '20m',
    gender: Gender.female,
  ),
];
