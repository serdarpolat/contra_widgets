import 'package:contra_widgets/src/Models/SubSettingsModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubSettings extends StatelessWidget {
  const SubSettings({
    Key? key,
    required this.item,
  }) : super(key: key);
  final SubSettingsModel item;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        height: hh(context, 52),
        child: Row(
          children: [
            basicCircle(context, bgColor: item.circleColor),
            SizedBox(width: ww(context, 12)),
            Expanded(
              child: Text(
                item.title,
                style: displayExtraBold17(context, black),
              ),
            ),
            SvgPicture.asset("chevron-right".getIcon),
          ],
        ),
      ),
    );
  }
}
