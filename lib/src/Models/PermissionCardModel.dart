import 'package:contra_widgets/src/Theming/Colors.dart';
import 'package:flutter/material.dart';

class PermissionCardModel {
  final String header;
  final String title;
  final Color bg;
  final Color textColor;

  PermissionCardModel(this.header, this.title, this.bg, this.textColor);
}

List<PermissionCardModel> permissionCards = [
  PermissionCardModel(
    "Happiness",
    "Colorful and Beautiful life if you want to enjoy every moment.",
    pink,
    white,
  ),
  PermissionCardModel(
    "Sadness",
    "Sometime you don’t want to talk.",
    green300,
    black,
  ),
  PermissionCardModel(
    "Friends",
    "I’ll not help you to finish this",
    yellow300,
    black,
  ),
];
