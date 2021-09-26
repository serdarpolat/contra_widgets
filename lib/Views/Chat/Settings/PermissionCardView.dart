import 'package:contra_widgets/src/Models/PermissionCardModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/Switcher.dart';
import 'package:flutter/material.dart';

class PermissionCard extends StatelessWidget {
  const PermissionCard({
    Key? key,
    required this.item,
  }) : super(key: key);
  final PermissionCardModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hh(context, 172),
      margin: EdgeInsets.only(bottom: h24(context)),
      padding: all24(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.header,
            style: hExtra27(
              context,
              item.textColor,
            ),
          ),
          Text(
            item.title,
            style: displayBold15(
              context,
              item.textColor,
            ),
          ),
          Spacer(),
          Switcher(),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(hh(context, 16)),
        color: item.bg,
        border: baseBorder(context),
      ),
    );
  }
}
