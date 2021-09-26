import 'package:contra_widgets/src/Models/SettingsTypeModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class SettingsType extends StatelessWidget {
  const SettingsType({Key? key, required this.item}) : super(key: key);
  final SettingsTypeModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.header,
          style: displayBold21(context, grey),
        ),
        SizedBox(height: hh(context, 16)),
        Container(
          padding: all24(context),
          child: Column(
            children: item.subsettings,
          ),
          decoration: baseDecoration(context, boxShadow: shadow400(context)),
        ),
      ],
    );
  }
}
