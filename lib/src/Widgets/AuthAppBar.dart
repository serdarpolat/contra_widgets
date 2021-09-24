import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Basics.dart';
import 'Buttons.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      height: hh(context, 102),
      padding: horizontal24(context),
      child: Padding(
        padding: EdgeInsets.only(top: hh(context, 54)),
        child: Row(
          children: [
            CircleShadowButton(
              onTap: () {},
              child: SvgPicture.asset("cross".getIcon),
            )
          ],
        ),
      ),
    );
  }
}
