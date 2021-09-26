class PrivacySettingsItemModel {
  final String title;
  final String? subtitle;

  PrivacySettingsItemModel({required this.title, this.subtitle});
}

List<PrivacySettingsItemModel> privacyItems = [
  PrivacySettingsItemModel(title: "Activity Status"),
  PrivacySettingsItemModel(
      title: "Private Account",
      subtitle: "Only people you approve can see your phots and videos."),
  PrivacySettingsItemModel(title: "Location"),
  PrivacySettingsItemModel(title: "Permission to tag"),
  PrivacySettingsItemModel(
      title: "Date of year",
      subtitle: "Do you want to show this year to public or not?"),
  PrivacySettingsItemModel(
      title: "Save to archive",
      subtitle: "Automatically save photos and video to your archive"),
];
