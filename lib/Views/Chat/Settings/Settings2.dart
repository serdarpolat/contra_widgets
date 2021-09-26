import 'package:contra_widgets/Views/Chat/Settings/SettingTypeView.dart';
import 'package:contra_widgets/src/Models/SettingsTypeModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings2 extends StatelessWidget {
  const Settings2({Key? key}) : super(key: key);

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
                  SizedBox(height: hh(context, 142)),
                  ...List.generate(settingsTypes.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: index == 0 ? hh(context, 40) : 0),
                      child: SettingsType(item: settingsTypes[index]),
                    );
                  }),
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
                "Settings",
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
