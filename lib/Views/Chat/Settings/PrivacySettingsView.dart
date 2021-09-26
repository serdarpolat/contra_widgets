import 'package:contra_widgets/src/Models/PrivacySettingModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/Switcher.dart';
import 'package:flutter/material.dart';

class PrivacySettingsItem extends StatelessWidget {
  const PrivacySettingsItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final PrivacySettingsItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: h16(context) + h4(context),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: displayExtraBold21(context, black),
                ),
                SizedBox(height: hh(context, 4)),
                if (item.subtitle != null)
                  Text(
                    item.subtitle!,
                    style: displayMedium15(context, grey),
                  ),
              ],
            ),
          ),
          SizedBox(width: ww(context, 14)),
          Switcher(),
        ],
      ),
    );
  }
}
