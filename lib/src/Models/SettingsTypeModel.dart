import 'package:contra_widgets/Views/Chat/Settings/SubSettingsView.dart';

import 'SubSettingsModel.dart';

class SettingsTypeModel {
  final String header;
  final List<SubSettings> subsettings;

  SettingsTypeModel(this.header, this.subsettings);
}

List<SettingsTypeModel> settingsTypes = [
  SettingsTypeModel(
    "General",
    List.generate(generalSettings.length, (index) {
      return SubSettings(item: generalSettings[index]);
    }),
  ),
  SettingsTypeModel(
    "Security and Privacy",
    List.generate(securitySettings.length, (index) {
      return SubSettings(item: securitySettings[index]);
    }),
  ),
];
