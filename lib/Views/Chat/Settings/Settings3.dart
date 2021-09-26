import 'package:contra_widgets/src/Models/PrivacySettingModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'PrivacySettingsView.dart';

class Settings3 extends StatelessWidget {
  const Settings3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Stack(
          children: [
            Padding(
              padding: horizontal24(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: hh(context, 118)),
                  ...List.generate(privacyItems.length, (index) {
                    return PrivacySettingsItem(item: privacyItems[index]);
                  }),
                  Spacer(),
                  BorderedButton(
                    height: hh(context, 60),
                    bgColor: black,
                    borderColor: black,
                    title: Text(
                      "Save",
                      style: hExtra27(context, white),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(height: hh(context, 24)),
                ],
              ),
            ),
            CustomAppbar(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              leading: CircleShadowButton(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "chevron-left".getIcon,
                  )),
              title: Text(
                "Privacy",
                style: hExtra27(context, black),
              ),
              trailing: Container(
                width: ww(context, 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
