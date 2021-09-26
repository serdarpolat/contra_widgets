import 'package:contra_widgets/src/Theming/Colors.dart';
import 'package:flutter/painting.dart';

class ChatNavbarItemModel {
  final int id;
  final String name;
  final Color color;

  ChatNavbarItemModel(this.id, this.name, this.color);
}

List<ChatNavbarItemModel> chatNavbarItems = [
  ChatNavbarItemModel(0, "Profile", blue),
  ChatNavbarItemModel(1, "Search", pink),
  ChatNavbarItemModel(2, "Chat", green),
  ChatNavbarItemModel(3, "About", red),
];
