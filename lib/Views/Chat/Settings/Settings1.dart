import 'package:contra_widgets/src/Models/PermissionCardModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'PermissionCardView.dart';

class Settings1 extends StatelessWidget {
  const Settings1({Key? key}) : super(key: key);

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
                children: [
                  SizedBox(height: hh(context, 130)),
                  ...List.generate(permissionCards.length,
                      (index) => PermissionCard(item: permissionCards[index])),
                  Spacer(),
                  BorderedButton(
                    height: hh(context, 60),
                    bgColor: black,
                    borderColor: black,
                    title: Text(
                      "Confirm here",
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
