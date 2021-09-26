import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class SubSettingsModel {
  final Color? circleColor;
  final String title;

  SubSettingsModel({this.circleColor, required this.title});
}

List<SubSettingsModel> generalSettings = [
  SubSettingsModel(title: "Display and sounds"),
  SubSettingsModel(title: "Data usage"),
  SubSettingsModel(title: "Accessibility"),
];

List<SubSettingsModel> securitySettings = [
  SubSettingsModel(title: "Account"),
  SubSettingsModel(title: "Password", circleColor: green300),
  SubSettingsModel(title: "Privacy", circleColor: red300),
  SubSettingsModel(title: "Preferences"),
];
